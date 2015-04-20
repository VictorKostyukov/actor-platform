package im.actor.server.presences

import scala.concurrent.duration._
import scala.concurrent.{ ExecutionContext, Future }

import akka.actor._
import akka.contrib.pattern.ShardRegion.Passivate
import akka.contrib.pattern.{ ClusterSharding, ShardRegion }
import akka.pattern.ask
import akka.util.Timeout
import org.joda.time.DateTime
import slick.driver.PostgresDriver.api._

import im.actor.server.{ models, persist }

case class PresenceManagerRegion(val ref: ActorRef)

object PresenceManager {

  @SerialVersionUID(1L)
  private case class Envelope(userId: Int, payload: Message)

  private sealed trait Message

  @SerialVersionUID(1L)
  private case class UserPresenceChange(presence: Presence, timeout: Long) extends Message

  @SerialVersionUID(1L)
  private case class Subscribe(consumer: ActorRef) extends Message

  @SerialVersionUID(1L)
  private case class SubscribeAck(consumer: ActorRef)

  @SerialVersionUID(1L)
  private case class Unsubscribe(consumer: ActorRef) extends Message

  @SerialVersionUID(1L)
  private case class UnsubscribeAck(consumer: ActorRef)

  trait Presence

  @SerialVersionUID(1L)
  case object Online extends Presence

  @SerialVersionUID(1L)
  case object Offline extends Presence

  @SerialVersionUID(1L)
  case class PresenceState(userId: Int, presence: Presence, lastSeenAt: Option[DateTime])

  private val idExtractor: ShardRegion.IdExtractor = {
    case env @ Envelope(authId, payload) => (authId.toString, env)
  }

  private val shardResolver: ShardRegion.ShardResolver = msg => msg match {
    case Envelope(authId, _) => (authId % 32).toString // TODO: configurable
  }

  private def startRegion(props: Option[Props])
                         (implicit
                          system: ActorSystem,
                          db: Database): PresenceManagerRegion =
    PresenceManagerRegion(ClusterSharding(system).start(
      typeName = "PresenceManager",
      entryProps = props,
      idExtractor = idExtractor,
      shardResolver = shardResolver
    ))

  def startRegion()(implicit system: ActorSystem, db: Database): PresenceManagerRegion = startRegion(Some(props))

  def startRegionProxy()(implicit system: ActorSystem, db: Database): PresenceManagerRegion = startRegion(None)

  def props(implicit db: Database) = Props(classOf[PresenceManager], db)

  def subscribe(region: PresenceManagerRegion, userId: Int, consumer: ActorRef)
               (implicit ec: ExecutionContext, timeout: Timeout): Future[Unit] = {
    region.ref.ask(Envelope(userId, Subscribe(consumer))).mapTo[SubscribeAck].map(_ => ())
  }

  def unsubscribe(region: PresenceManagerRegion, userId: Int, consumer: ActorRef)
                 (implicit ec: ExecutionContext, timeout: Timeout): Future[Unit] = {
    region.ref.ask(Envelope(userId, Unsubscribe(consumer))).mapTo[SubscribeAck].map(_ => ())
  }

  def subscribe(region: PresenceManagerRegion, userIds: Set[Int], consumer: ActorRef)
               (implicit ec: ExecutionContext, timeout: Timeout): Future[Unit] =
    Future.sequence(userIds map (subscribe(region, _, consumer))) map (_ => ())

  def presenceSetOnline(region: PresenceManagerRegion, userId: Int, timeout: Long): Unit = {
    region.ref ! Envelope(userId, UserPresenceChange(Online, timeout))
  }

  def presenceSetOffline(region: PresenceManagerRegion, userId: Int, timeout: Long): Unit = {
    region.ref ! Envelope(userId, UserPresenceChange(Offline, timeout))
  }
}

class PresenceManager(implicit db: Database) extends Actor with ActorLogging with Stash {

  import PresenceManager._

  @SerialVersionUID(1L)
  case class Initialized(lastSeenAt: Option[DateTime])

  implicit val ec: ExecutionContext = context.dispatcher

  private val receiveTimeout = 15.minutes // TODO: configurable
  context.setReceiveTimeout(receiveTimeout)

  private[this] var scheduledTimeout: Option[Cancellable] = None
  private[this] var consumers = Set.empty[ActorRef]
  private[this] var lastChange = UserPresenceChange(Offline, 0)
  private[this] var lastSeenAt: Option[DateTime] = None

  def receive = {
    case Envelope(userId, _) =>
      stash()

      db.run(persist.presences.UserPresence.find(userId).map {
        case Some(userPresence) =>
          self ! Initialized(userPresence.lastSeenAt)
        case None =>
          persist.presences.UserPresence.createOrUpdate(models.presences.UserPresence(userId, None))
          self ! Initialized(None)
      }).onFailure { case e =>
        log.error(e, "Failed to recover PresenceManager state")
        self ! PoisonPill
      }
    case Initialized(lastSeenAt: Option[DateTime]) =>
      unstashAll()
      this.lastSeenAt = lastSeenAt
      context.become(working)
    case msg => stash()
  }

  def working: Receive = {
    case Envelope(userId, Subscribe(consumer)) =>
      if (!consumers.contains(consumer)) {
        context.watch(consumer)
        consumers += consumer
      }

      sender ! SubscribeAck(consumer)
      deliverState(userId)
    case Envelope(userId, Unsubscribe(consumer)) =>
      consumers -= consumer
      sender ! UnsubscribeAck(consumer)
    case Terminated(consumer) =>
      consumers -= consumer
    case Envelope(userId, change @ UserPresenceChange(presence, timeout)) =>
      log.debug("userId: {}, change: {}", userId, change)

      scheduledTimeout map (_.cancel())

      val needDeliver = this.lastChange.presence != presence

      this.lastChange = change

      if (presence == Online) {
        this.lastSeenAt = Some(new DateTime)

        // TODO: handle failures
        db.run(persist.presences.UserPresence.createOrUpdate(models.presences.UserPresence(userId, this.lastSeenAt)))

        scheduledTimeout = Some(
          context.system.scheduler.scheduleOnce(timeout.millis, self, Envelope(userId, UserPresenceChange(Offline, 0))))
      }

      if (needDeliver) {
        deliverState(userId)
      }
    case ReceiveTimeout =>
      if (consumers.isEmpty) {
        context.parent ! Passivate(stopMessage = PoisonPill)
      }
  }

  private def deliverState(userId: Int): Unit = {
    consumers foreach { consumer =>
      consumer ! PresenceState(userId, this.lastChange.presence, this.lastSeenAt)
    }
  }
}