//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/library/actor-cocoa-base/build/java/im/actor/model/jvm/JavaThreadingProvider.java
//


#line 1 "/Users/ex3ndr/Develop/actor-model/library/actor-cocoa-base/build/java/im/actor/model/jvm/JavaThreadingProvider.java"

#include "J2ObjC_source.h"
#include "im/actor/model/droidkit/actors/ActorSystem.h"
#include "im/actor/model/droidkit/actors/ThreadPriority.h"
#include "im/actor/model/droidkit/actors/mailbox/ActorDispatcher.h"
#include "im/actor/model/jvm/JavaThreadingProvider.h"
#include "im/actor/model/jvm/threads/JavaAtomicInteger.h"
#include "im/actor/model/jvm/threads/JavaAtomicLong.h"
#include "im/actor/model/jvm/threads/JavaDispatcherActor.h"
#include "im/actor/model/jvm/threads/JavaThreadLocal.h"
#include "im/actor/model/util/AtomicIntegerCompat.h"
#include "im/actor/model/util/AtomicLongCompat.h"
#include "im/actor/model/util/ThreadLocalCompat.h"
#include "java/lang/Runtime.h"
#include "java/lang/System.h"


#line 18
@implementation AMJavaThreadingProvider

- (instancetype)init {
  AMJavaThreadingProvider_init(self);
  return self;
}

- (jlong)getActorTime {
  return JavaLangSystem_nanoTime() / 1000000;
}


#line 30
- (jlong)getCurrentTime {
  return JavaLangSystem_currentTimeMillis();
}


#line 35
- (jlong)getSyncedCurrentTime {
  return [self getCurrentTime];
}


#line 40
- (jint)getCoresCount {
  return [((JavaLangRuntime *) nil_chk(JavaLangRuntime_getRuntime())) availableProcessors];
}


#line 45
- (AMAtomicIntegerCompat *)createAtomicIntWithInt:(jint)value {
  return new_ImActorModelJvmThreadsJavaAtomicInteger_initWithInt_(value);
}


#line 50
- (AMAtomicLongCompat *)createAtomicLongWithLong:(jlong)value {
  return new_ImActorModelJvmThreadsJavaAtomicLong_initWithLong_(value);
}


#line 55
- (AMThreadLocalCompat *)createThreadLocal {
  return new_ImActorModelJvmThreadsJavaThreadLocal_init();
}


#line 60
- (DKActorDispatcher *)createDispatcherWithNSString:(NSString *)name
                                            withInt:(jint)threadsCount
                           withDKThreadPriorityEnum:(DKThreadPriorityEnum *)priority
                                  withDKActorSystem:(DKActorSystem *)actorSystem {
  return new_ImActorModelJvmThreadsJavaDispatcherActor_initWithNSString_withDKActorSystem_withInt_withDKThreadPriorityEnum_(name, actorSystem, threadsCount, priority);
}


#line 65
- (DKActorDispatcher *)createDefaultDispatcherWithNSString:(NSString *)name
                                  withDKThreadPriorityEnum:(DKThreadPriorityEnum *)priority
                                         withDKActorSystem:(DKActorSystem *)actorSystem {
  return [self createDispatcherWithNSString:name withInt:[self getCoresCount] withDKThreadPriorityEnum:priority withDKActorSystem:actorSystem];
}

@end


#line 20
void AMJavaThreadingProvider_init(AMJavaThreadingProvider *self) {
  (void) NSObject_init(self);
}


#line 20
AMJavaThreadingProvider *new_AMJavaThreadingProvider_init() {
  AMJavaThreadingProvider *self = [AMJavaThreadingProvider alloc];
  AMJavaThreadingProvider_init(self);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(AMJavaThreadingProvider)