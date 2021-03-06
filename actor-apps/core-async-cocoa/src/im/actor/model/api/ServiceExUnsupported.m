//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-platform/actor-apps/core/src/main/java/im/actor/model/api/ServiceExUnsupported.java
//


#include "IOSClass.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "im/actor/model/api/ServiceEx.h"
#include "im/actor/model/api/ServiceExUnsupported.h"
#include "im/actor/model/droidkit/bser/BserValues.h"
#include "im/actor/model/droidkit/bser/BserWriter.h"
#include "java/io/IOException.h"

@interface APServiceExUnsupported () {
 @public
  jint key_;
  IOSByteArray *content_;
}

@end

J2OBJC_FIELD_SETTER(APServiceExUnsupported, content_, IOSByteArray *)

@implementation APServiceExUnsupported

- (instancetype)initWithInt:(jint)key
              withByteArray:(IOSByteArray *)content {
  APServiceExUnsupported_initWithInt_withByteArray_(self, key, content);
  return self;
}

- (jint)getHeader {
  return self->key_;
}

- (void)parseWithBSBserValues:(BSBserValues *)values {
  @throw new_JavaIoIOException_initWithNSString_(@"Parsing is unsupported");
}

- (void)serializeWithBSBserWriter:(BSBserWriter *)writer {
  [((BSBserWriter *) nil_chk(writer)) writeRawWithByteArray:content_];
}

@end

void APServiceExUnsupported_initWithInt_withByteArray_(APServiceExUnsupported *self, jint key, IOSByteArray *content) {
  (void) APServiceEx_init(self);
  self->key_ = key;
  self->content_ = content;
}

APServiceExUnsupported *new_APServiceExUnsupported_initWithInt_withByteArray_(jint key, IOSByteArray *content) {
  APServiceExUnsupported *self = [APServiceExUnsupported alloc];
  APServiceExUnsupported_initWithInt_withByteArray_(self, key, content);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(APServiceExUnsupported)
