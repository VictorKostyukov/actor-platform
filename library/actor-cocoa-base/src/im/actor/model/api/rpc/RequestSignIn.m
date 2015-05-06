//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/library/actor-cocoa-base/build/java/im/actor/model/api/rpc/RequestSignIn.java
//


#line 1 "/Users/ex3ndr/Develop/actor-model/library/actor-cocoa-base/build/java/im/actor/model/api/rpc/RequestSignIn.java"

#include "IOSClass.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "im/actor/model/api/rpc/RequestSignIn.h"
#include "im/actor/model/droidkit/bser/Bser.h"
#include "im/actor/model/droidkit/bser/BserObject.h"
#include "im/actor/model/droidkit/bser/BserValues.h"
#include "im/actor/model/droidkit/bser/BserWriter.h"
#include "im/actor/model/droidkit/bser/Utils.h"
#include "im/actor/model/network/parser/Request.h"
#include "java/io/IOException.h"

@interface ImActorModelApiRpcRequestSignIn () {
 @public
  jlong phoneNumber_;
  NSString *smsHash_;
  NSString *smsCode_;
  IOSByteArray *deviceHash_;
  NSString *deviceTitle_;
  jint appId_;
  NSString *appKey_;
}

@end

J2OBJC_FIELD_SETTER(ImActorModelApiRpcRequestSignIn, smsHash_, NSString *)
J2OBJC_FIELD_SETTER(ImActorModelApiRpcRequestSignIn, smsCode_, NSString *)
J2OBJC_FIELD_SETTER(ImActorModelApiRpcRequestSignIn, deviceHash_, IOSByteArray *)
J2OBJC_FIELD_SETTER(ImActorModelApiRpcRequestSignIn, deviceTitle_, NSString *)
J2OBJC_FIELD_SETTER(ImActorModelApiRpcRequestSignIn, appKey_, NSString *)


#line 24
@implementation ImActorModelApiRpcRequestSignIn


#line 27
+ (ImActorModelApiRpcRequestSignIn *)fromBytesWithByteArray:(IOSByteArray *)data {
  return ImActorModelApiRpcRequestSignIn_fromBytesWithByteArray_(data);
}


#line 39
- (instancetype)initWithLong:(jlong)phoneNumber
                withNSString:(NSString *)smsHash
                withNSString:(NSString *)smsCode
               withByteArray:(IOSByteArray *)deviceHash
                withNSString:(NSString *)deviceTitle
                     withInt:(jint)appId
                withNSString:(NSString *)appKey {
  ImActorModelApiRpcRequestSignIn_initWithLong_withNSString_withNSString_withByteArray_withNSString_withInt_withNSString_(self, phoneNumber, smsHash, smsCode, deviceHash, deviceTitle, appId, appKey);
  return self;
}


#line 49
- (instancetype)init {
  ImActorModelApiRpcRequestSignIn_init(self);
  return self;
}


#line 53
- (jlong)getPhoneNumber {
  return self->phoneNumber_;
}

- (NSString *)getSmsHash {
  return self->smsHash_;
}

- (NSString *)getSmsCode {
  return self->smsCode_;
}

- (IOSByteArray *)getDeviceHash {
  return self->deviceHash_;
}

- (NSString *)getDeviceTitle {
  return self->deviceTitle_;
}

- (jint)getAppId {
  return self->appId_;
}

- (NSString *)getAppKey {
  return self->appKey_;
}


#line 82
- (void)parseWithBSBserValues:(BSBserValues *)values {
  self->phoneNumber_ = [((BSBserValues *) nil_chk(values)) getLongWithInt:1];
  self->smsHash_ = [values getStringWithInt:2];
  self->smsCode_ = [values getStringWithInt:3];
  self->deviceHash_ = [values getBytesWithInt:5];
  self->deviceTitle_ = [values getStringWithInt:6];
  self->appId_ = [values getIntWithInt:7];
  self->appKey_ = [values getStringWithInt:8];
}


#line 93
- (void)serializeWithBSBserWriter:(BSBserWriter *)writer {
  [((BSBserWriter *) nil_chk(writer)) writeLongWithInt:1 withLong:self->phoneNumber_];
  if (self->smsHash_ == nil) {
    @throw new_JavaIoIOException_init();
  }
  [writer writeStringWithInt:2 withNSString:self->smsHash_];
  if (self->smsCode_ == nil) {
    @throw new_JavaIoIOException_init();
  }
  [writer writeStringWithInt:3 withNSString:self->smsCode_];
  if (self->deviceHash_ == nil) {
    @throw new_JavaIoIOException_init();
  }
  [writer writeBytesWithInt:5 withByteArray:self->deviceHash_];
  if (self->deviceTitle_ == nil) {
    @throw new_JavaIoIOException_init();
  }
  [writer writeStringWithInt:6 withNSString:self->deviceTitle_];
  [writer writeIntWithInt:7 withInt:self->appId_];
  if (self->appKey_ == nil) {
    @throw new_JavaIoIOException_init();
  }
  [writer writeStringWithInt:8 withNSString:self->appKey_];
}


#line 119
- (NSString *)description {
  NSString *res = @"rpc SignIn{";
  res = JreStrcat("$$", res, JreStrcat("$$", @"deviceHash=", BSUtils_byteArrayToStringWithByteArray_(self->deviceHash_)));
  res = JreStrcat("$$", res, JreStrcat("$$", @", deviceTitle=", self->deviceTitle_));
  res = JreStrcat("$C", res, '}');
  return res;
}


#line 128
- (jint)getHeaderKey {
  return ImActorModelApiRpcRequestSignIn_HEADER;
}

@end


#line 27
ImActorModelApiRpcRequestSignIn *ImActorModelApiRpcRequestSignIn_fromBytesWithByteArray_(IOSByteArray *data) {
  ImActorModelApiRpcRequestSignIn_initialize();
  
#line 28
  return ((ImActorModelApiRpcRequestSignIn *) BSBser_parseWithBSBserObject_withByteArray_(new_ImActorModelApiRpcRequestSignIn_init(), data));
}


#line 39
void ImActorModelApiRpcRequestSignIn_initWithLong_withNSString_withNSString_withByteArray_withNSString_withInt_withNSString_(ImActorModelApiRpcRequestSignIn *self, jlong phoneNumber, NSString *smsHash, NSString *smsCode, IOSByteArray *deviceHash, NSString *deviceTitle, jint appId, NSString *appKey) {
  (void) ImActorModelNetworkParserRequest_init(self);
  
#line 40
  self->phoneNumber_ = phoneNumber;
  self->smsHash_ = smsHash;
  self->smsCode_ = smsCode;
  self->deviceHash_ = deviceHash;
  self->deviceTitle_ = deviceTitle;
  self->appId_ = appId;
  self->appKey_ = appKey;
}


#line 39
ImActorModelApiRpcRequestSignIn *new_ImActorModelApiRpcRequestSignIn_initWithLong_withNSString_withNSString_withByteArray_withNSString_withInt_withNSString_(jlong phoneNumber, NSString *smsHash, NSString *smsCode, IOSByteArray *deviceHash, NSString *deviceTitle, jint appId, NSString *appKey) {
  ImActorModelApiRpcRequestSignIn *self = [ImActorModelApiRpcRequestSignIn alloc];
  ImActorModelApiRpcRequestSignIn_initWithLong_withNSString_withNSString_withByteArray_withNSString_withInt_withNSString_(self, phoneNumber, smsHash, smsCode, deviceHash, deviceTitle, appId, appKey);
  return self;
}


#line 49
void ImActorModelApiRpcRequestSignIn_init(ImActorModelApiRpcRequestSignIn *self) {
  (void) ImActorModelNetworkParserRequest_init(self);
}


#line 49
ImActorModelApiRpcRequestSignIn *new_ImActorModelApiRpcRequestSignIn_init() {
  ImActorModelApiRpcRequestSignIn *self = [ImActorModelApiRpcRequestSignIn alloc];
  ImActorModelApiRpcRequestSignIn_init(self);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ImActorModelApiRpcRequestSignIn)