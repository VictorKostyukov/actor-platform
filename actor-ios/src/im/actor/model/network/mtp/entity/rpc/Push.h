//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/actor-ios/build/java/im/actor/model/network/mtp/entity/rpc/Push.java
//

#ifndef _MTPush_H_
#define _MTPush_H_

@class IOSByteArray;
@class JavaIoInputStream;
@class JavaIoOutputStream;

#include "J2ObjC_header.h"
#include "im/actor/model/network/mtp/entity/ProtoStruct.h"

@interface MTPush : MTProtoStruct {
 @public
  jint updateType_;
  IOSByteArray *body_;
}

- (instancetype)initWithJavaIoInputStream:(JavaIoInputStream *)stream;

- (instancetype)initWithInt:(jint)updateType
              withByteArray:(IOSByteArray *)body;

- (jbyte)getHeader;

- (void)writeBodyWithJavaIoOutputStream:(JavaIoOutputStream *)bs;

- (void)readBodyWithJavaIoInputStream:(JavaIoInputStream *)bs;

- (jint)getLength;

- (NSString *)description;

@end

J2OBJC_EMPTY_STATIC_INIT(MTPush)

J2OBJC_FIELD_SETTER(MTPush, body_, IOSByteArray *)

CF_EXTERN_C_BEGIN
CF_EXTERN_C_END

typedef MTPush ImActorModelNetworkMtpEntityRpcPush;

J2OBJC_TYPE_LITERAL_HEADER(MTPush)

#endif // _MTPush_H_