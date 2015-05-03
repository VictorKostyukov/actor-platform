//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/library/actor-cocoa-base/build/java/im/actor/model/api/Parameter.java
//


#line 1 "/Users/ex3ndr/Develop/actor-model/library/actor-cocoa-base/build/java/im/actor/model/api/Parameter.java"

#include "IOSClass.h"
#include "J2ObjC_source.h"
#include "im/actor/model/api/Parameter.h"
#include "im/actor/model/droidkit/bser/BserObject.h"
#include "im/actor/model/droidkit/bser/BserValues.h"
#include "im/actor/model/droidkit/bser/BserWriter.h"
#include "java/io/IOException.h"

@interface ImActorModelApiParameter () {
 @public
  NSString *key_;
  NSString *value_;
}

@end

J2OBJC_FIELD_SETTER(ImActorModelApiParameter, key_, NSString *)
J2OBJC_FIELD_SETTER(ImActorModelApiParameter, value_, NSString *)


#line 19
@implementation ImActorModelApiParameter


#line 24
- (instancetype)initWithNSString:(NSString *)key
                    withNSString:(NSString *)value {
  ImActorModelApiParameter_initWithNSString_withNSString_(self, key, value);
  return self;
}


#line 29
- (instancetype)init {
  ImActorModelApiParameter_init(self);
  return self;
}


#line 33
- (NSString *)getKey {
  return self->key_;
}

- (NSString *)getValue {
  return self->value_;
}


#line 42
- (void)parseWithBSBserValues:(BSBserValues *)values {
  self->key_ = [((BSBserValues *) nil_chk(values)) getStringWithInt:1];
  self->value_ = [values getStringWithInt:2];
}


#line 48
- (void)serializeWithBSBserWriter:(BSBserWriter *)writer {
  if (self->key_ == nil) {
    @throw new_JavaIoIOException_init();
  }
  [((BSBserWriter *) nil_chk(writer)) writeStringWithInt:1 withNSString:self->key_];
  if (self->value_ == nil) {
    @throw new_JavaIoIOException_init();
  }
  [writer writeStringWithInt:2 withNSString:self->value_];
}


#line 60
- (NSString *)description {
  NSString *res = @"struct Parameter{";
  res = JreStrcat("$C", res, '}');
  return res;
}

@end


#line 24
void ImActorModelApiParameter_initWithNSString_withNSString_(ImActorModelApiParameter *self, NSString *key, NSString *value) {
  (void) BSBserObject_init(self);
  
#line 25
  self->key_ = key;
  self->value_ = value;
}


#line 24
ImActorModelApiParameter *new_ImActorModelApiParameter_initWithNSString_withNSString_(NSString *key, NSString *value) {
  ImActorModelApiParameter *self = [ImActorModelApiParameter alloc];
  ImActorModelApiParameter_initWithNSString_withNSString_(self, key, value);
  return self;
}


#line 29
void ImActorModelApiParameter_init(ImActorModelApiParameter *self) {
  (void) BSBserObject_init(self);
}


#line 29
ImActorModelApiParameter *new_ImActorModelApiParameter_init() {
  ImActorModelApiParameter *self = [ImActorModelApiParameter alloc];
  ImActorModelApiParameter_init(self);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ImActorModelApiParameter)