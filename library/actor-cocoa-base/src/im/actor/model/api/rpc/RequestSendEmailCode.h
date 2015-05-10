//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/library/actor-cocoa-base/build/java/im/actor/model/api/rpc/RequestSendEmailCode.java
//

#ifndef _ImActorModelApiRpcRequestSendEmailCode_H_
#define _ImActorModelApiRpcRequestSendEmailCode_H_

#include "J2ObjC_header.h"
#include "im/actor/model/network/parser/Request.h"

@class BSBserValues;
@class BSBserWriter;
@class IOSByteArray;

#define ImActorModelApiRpcRequestSendEmailCode_HEADER 120

@interface ImActorModelApiRpcRequestSendEmailCode : ImActorModelNetworkParserRequest

#pragma mark Public

- (instancetype)init;

- (instancetype)initWithNSString:(NSString *)email
                    withNSString:(NSString *)description_;

+ (ImActorModelApiRpcRequestSendEmailCode *)fromBytesWithByteArray:(IOSByteArray *)data;

- (NSString *)getDescription;

- (NSString *)getEmail;

- (jint)getHeaderKey;

- (void)parseWithBSBserValues:(BSBserValues *)values;

- (void)serializeWithBSBserWriter:(BSBserWriter *)writer;

- (NSString *)description;

@end

J2OBJC_EMPTY_STATIC_INIT(ImActorModelApiRpcRequestSendEmailCode)

J2OBJC_STATIC_FIELD_GETTER(ImActorModelApiRpcRequestSendEmailCode, HEADER, jint)

FOUNDATION_EXPORT ImActorModelApiRpcRequestSendEmailCode *ImActorModelApiRpcRequestSendEmailCode_fromBytesWithByteArray_(IOSByteArray *data);

FOUNDATION_EXPORT void ImActorModelApiRpcRequestSendEmailCode_initWithNSString_withNSString_(ImActorModelApiRpcRequestSendEmailCode *self, NSString *email, NSString *description_);

FOUNDATION_EXPORT ImActorModelApiRpcRequestSendEmailCode *new_ImActorModelApiRpcRequestSendEmailCode_initWithNSString_withNSString_(NSString *email, NSString *description_) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT void ImActorModelApiRpcRequestSendEmailCode_init(ImActorModelApiRpcRequestSendEmailCode *self);

FOUNDATION_EXPORT ImActorModelApiRpcRequestSendEmailCode *new_ImActorModelApiRpcRequestSendEmailCode_init() NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ImActorModelApiRpcRequestSendEmailCode)

#endif // _ImActorModelApiRpcRequestSendEmailCode_H_