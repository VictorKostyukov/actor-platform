//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/library/actor-cocoa-base/build/java/im/actor/model/api/rpc/RequestSendAuthCall.java
//

#ifndef _ImActorModelApiRpcRequestSendAuthCall_H_
#define _ImActorModelApiRpcRequestSendAuthCall_H_

#include "J2ObjC_header.h"
#include "im/actor/model/network/parser/Request.h"

@class BSBserValues;
@class BSBserWriter;
@class IOSByteArray;

#define ImActorModelApiRpcRequestSendAuthCall_HEADER 90

@interface ImActorModelApiRpcRequestSendAuthCall : ImActorModelNetworkParserRequest

#pragma mark Public

- (instancetype)init;

- (instancetype)initWithLong:(jlong)phoneNumber
                withNSString:(NSString *)smsHash
                     withInt:(jint)appId
                withNSString:(NSString *)apiKey;

+ (ImActorModelApiRpcRequestSendAuthCall *)fromBytesWithByteArray:(IOSByteArray *)data;

- (NSString *)getApiKey;

- (jint)getAppId;

- (jint)getHeaderKey;

- (jlong)getPhoneNumber;

- (NSString *)getSmsHash;

- (void)parseWithBSBserValues:(BSBserValues *)values;

- (void)serializeWithBSBserWriter:(BSBserWriter *)writer;

- (NSString *)description;

@end

J2OBJC_EMPTY_STATIC_INIT(ImActorModelApiRpcRequestSendAuthCall)

J2OBJC_STATIC_FIELD_GETTER(ImActorModelApiRpcRequestSendAuthCall, HEADER, jint)

FOUNDATION_EXPORT ImActorModelApiRpcRequestSendAuthCall *ImActorModelApiRpcRequestSendAuthCall_fromBytesWithByteArray_(IOSByteArray *data);

FOUNDATION_EXPORT void ImActorModelApiRpcRequestSendAuthCall_initWithLong_withNSString_withInt_withNSString_(ImActorModelApiRpcRequestSendAuthCall *self, jlong phoneNumber, NSString *smsHash, jint appId, NSString *apiKey);

FOUNDATION_EXPORT ImActorModelApiRpcRequestSendAuthCall *new_ImActorModelApiRpcRequestSendAuthCall_initWithLong_withNSString_withInt_withNSString_(jlong phoneNumber, NSString *smsHash, jint appId, NSString *apiKey) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT void ImActorModelApiRpcRequestSendAuthCall_init(ImActorModelApiRpcRequestSendAuthCall *self);

FOUNDATION_EXPORT ImActorModelApiRpcRequestSendAuthCall *new_ImActorModelApiRpcRequestSendAuthCall_init() NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ImActorModelApiRpcRequestSendAuthCall)

#endif // _ImActorModelApiRpcRequestSendAuthCall_H_