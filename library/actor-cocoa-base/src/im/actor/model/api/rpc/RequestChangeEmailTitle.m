//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/library/actor-cocoa-base/build/java/im/actor/model/api/rpc/RequestChangeEmailTitle.java
//


#line 1 "/Users/ex3ndr/Develop/actor-model/library/actor-cocoa-base/build/java/im/actor/model/api/rpc/RequestChangeEmailTitle.java"

#include "IOSClass.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "im/actor/model/api/rpc/RequestChangeEmailTitle.h"
#include "im/actor/model/droidkit/bser/Bser.h"
#include "im/actor/model/droidkit/bser/BserObject.h"
#include "im/actor/model/droidkit/bser/BserValues.h"
#include "im/actor/model/droidkit/bser/BserWriter.h"
#include "im/actor/model/network/parser/Request.h"
#include "java/io/IOException.h"

@interface ImActorModelApiRpcRequestChangeEmailTitle () {
 @public
  jint emailId_;
  NSString *title_;
}

@end

J2OBJC_FIELD_SETTER(ImActorModelApiRpcRequestChangeEmailTitle, title_, NSString *)


#line 24
@implementation ImActorModelApiRpcRequestChangeEmailTitle


#line 27
+ (ImActorModelApiRpcRequestChangeEmailTitle *)fromBytesWithByteArray:(IOSByteArray *)data {
  return ImActorModelApiRpcRequestChangeEmailTitle_fromBytesWithByteArray_(data);
}


#line 34
- (instancetype)initWithInt:(jint)emailId
               withNSString:(NSString *)title {
  ImActorModelApiRpcRequestChangeEmailTitle_initWithInt_withNSString_(self, emailId, title);
  return self;
}


#line 39
- (instancetype)init {
  ImActorModelApiRpcRequestChangeEmailTitle_init(self);
  return self;
}


#line 43
- (jint)getEmailId {
  return self->emailId_;
}

- (NSString *)getTitle {
  return self->title_;
}


#line 52
- (void)parseWithBSBserValues:(BSBserValues *)values {
  self->emailId_ = [((BSBserValues *) nil_chk(values)) getIntWithInt:1];
  self->title_ = [values getStringWithInt:2];
}


#line 58
- (void)serializeWithBSBserWriter:(BSBserWriter *)writer {
  [((BSBserWriter *) nil_chk(writer)) writeIntWithInt:1 withInt:self->emailId_];
  if (self->title_ == nil) {
    @throw new_JavaIoIOException_init();
  }
  [writer writeStringWithInt:2 withNSString:self->title_];
}


#line 67
- (NSString *)description {
  NSString *res = @"rpc ChangeEmailTitle{";
  res = JreStrcat("$$", res, JreStrcat("$I", @"emailId=", self->emailId_));
  res = JreStrcat("$$", res, JreStrcat("$$", @", title=", self->title_));
  res = JreStrcat("$C", res, '}');
  return res;
}


#line 76
- (jint)getHeaderKey {
  return ImActorModelApiRpcRequestChangeEmailTitle_HEADER;
}

@end


#line 27
ImActorModelApiRpcRequestChangeEmailTitle *ImActorModelApiRpcRequestChangeEmailTitle_fromBytesWithByteArray_(IOSByteArray *data) {
  ImActorModelApiRpcRequestChangeEmailTitle_initialize();
  
#line 28
  return ((ImActorModelApiRpcRequestChangeEmailTitle *) BSBser_parseWithBSBserObject_withByteArray_(new_ImActorModelApiRpcRequestChangeEmailTitle_init(), data));
}

void ImActorModelApiRpcRequestChangeEmailTitle_initWithInt_withNSString_(ImActorModelApiRpcRequestChangeEmailTitle *self, jint emailId, NSString *title) {
  (void) ImActorModelNetworkParserRequest_init(self);
  
#line 35
  self->emailId_ = emailId;
  self->title_ = title;
}


#line 34
ImActorModelApiRpcRequestChangeEmailTitle *new_ImActorModelApiRpcRequestChangeEmailTitle_initWithInt_withNSString_(jint emailId, NSString *title) {
  ImActorModelApiRpcRequestChangeEmailTitle *self = [ImActorModelApiRpcRequestChangeEmailTitle alloc];
  ImActorModelApiRpcRequestChangeEmailTitle_initWithInt_withNSString_(self, emailId, title);
  return self;
}


#line 39
void ImActorModelApiRpcRequestChangeEmailTitle_init(ImActorModelApiRpcRequestChangeEmailTitle *self) {
  (void) ImActorModelNetworkParserRequest_init(self);
}


#line 39
ImActorModelApiRpcRequestChangeEmailTitle *new_ImActorModelApiRpcRequestChangeEmailTitle_init() {
  ImActorModelApiRpcRequestChangeEmailTitle *self = [ImActorModelApiRpcRequestChangeEmailTitle alloc];
  ImActorModelApiRpcRequestChangeEmailTitle_init(self);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ImActorModelApiRpcRequestChangeEmailTitle)