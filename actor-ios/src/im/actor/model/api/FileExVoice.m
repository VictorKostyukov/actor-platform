//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/actor-ios/build/java/im/actor/model/api/FileExVoice.java
//

#include "IOSClass.h"
#include "J2ObjC_source.h"
#include "im/actor/model/api/FileExVoice.h"
#include "im/actor/model/droidkit/bser/BserValues.h"
#include "im/actor/model/droidkit/bser/BserWriter.h"
#include "java/io/IOException.h"

@interface ImActorModelApiFileExVoice () {
 @public
  jint duration_;
}
@end

@implementation ImActorModelApiFileExVoice

- (instancetype)initWithInt:(jint)duration {
  if (self = [super init]) {
    self->duration_ = duration;
  }
  return self;
}

- (instancetype)init {
  return [super init];
}

- (jint)getDuration {
  return self->duration_;
}

- (void)parseWithBSBserValues:(BSBserValues *)values {
  self->duration_ = [((BSBserValues *) nil_chk(values)) getIntWithInt:1];
}

- (void)serializeWithBSBserWriter:(BSBserWriter *)writer {
  [((BSBserWriter *) nil_chk(writer)) writeIntWithInt:1 withInt:self->duration_];
}

- (NSString *)description {
  NSString *res = @"struct FileExVoice{";
  res = JreStrcat("$$", res, JreStrcat("$I", @"duration=", self->duration_));
  res = JreStrcat("$C", res, '}');
  return res;
}

- (void)copyAllFieldsTo:(ImActorModelApiFileExVoice *)other {
  [super copyAllFieldsTo:other];
  other->duration_ = duration_;
}

@end

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ImActorModelApiFileExVoice)