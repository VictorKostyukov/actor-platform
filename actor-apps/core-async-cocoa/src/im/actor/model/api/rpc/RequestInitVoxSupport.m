//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-platform/actor-apps/library/core/src/main/java/im/actor/model/api/rpc/RequestInitVoxSupport.java
//


#include "IOSClass.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "im/actor/model/api/rpc/RequestInitVoxSupport.h"
#include "im/actor/model/droidkit/bser/Bser.h"
#include "im/actor/model/droidkit/bser/BserObject.h"
#include "im/actor/model/droidkit/bser/BserValues.h"
#include "im/actor/model/droidkit/bser/BserWriter.h"
#include "im/actor/model/network/parser/Request.h"
#include "java/io/IOException.h"

@implementation APRequestInitVoxSupport

+ (APRequestInitVoxSupport *)fromBytesWithByteArray:(IOSByteArray *)data {
  return APRequestInitVoxSupport_fromBytesWithByteArray_(data);
}

- (instancetype)init {
  APRequestInitVoxSupport_init(self);
  return self;
}

- (void)parseWithBSBserValues:(BSBserValues *)values {
}

- (void)serializeWithBSBserWriter:(BSBserWriter *)writer {
}

- (NSString *)description {
  NSString *res = @"rpc InitVoxSupport{";
  res = JreStrcat("$C", res, '}');
  return res;
}

- (jint)getHeaderKey {
  return APRequestInitVoxSupport_HEADER;
}

@end

APRequestInitVoxSupport *APRequestInitVoxSupport_fromBytesWithByteArray_(IOSByteArray *data) {
  APRequestInitVoxSupport_initialize();
  return ((APRequestInitVoxSupport *) BSBser_parseWithBSBserObject_withByteArray_(new_APRequestInitVoxSupport_init(), data));
}

void APRequestInitVoxSupport_init(APRequestInitVoxSupport *self) {
  (void) APRequest_init(self);
}

APRequestInitVoxSupport *new_APRequestInitVoxSupport_init() {
  APRequestInitVoxSupport *self = [APRequestInitVoxSupport alloc];
  APRequestInitVoxSupport_init(self);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(APRequestInitVoxSupport)