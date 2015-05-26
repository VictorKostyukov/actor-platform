package im.actor.server.enrich

case class ImageData(url: String, contentLength: Int, fileName: Option[String], mimeType: String, w: Int, h: Int)

object Images {
  val noNameHttp = ImageData("http://www.google.com/images/srpr/logo11w.png", 14022, None, "image/png", 538, 190)
  val withNameHttp = ImageData(
    url = "http://3.bp.blogspot.com/-y_-bQwAC-po/Tb3z6szJMRI/AAAAAAAAAZY/ZLkBrx6zXXQ/s1600/Black+cat+and+spaniel%252C+HMS+%2527Barham%2527.jpg",
    contentLength = 215482,
    fileName = Some("Black cat and spaniel, HMS 'Barham'.jpg"),
    mimeType = "image/jpeg",
    w = 796, h = 1280
  )
  val noNameHttps = ImageData("https://www.google.com/images/srpr/logo11w.png", 14022, None, "image/png", 538, 190)
}

object NonImages {
  val mixedText = s"hello, here is cure picture ${Images.noNameHttp.url}"
  val plainText = "well, it isn not cute actually"
  val nonImageUrl = "https://ajax.googleapis.com/ajax/libs/webfont/1.5.18/webfont.js"
}