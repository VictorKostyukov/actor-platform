//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/library/actor-cocoa-base/build/java/im/actor/model/api/rpc/RequestGetAvailableInterests.java
//

#ifndef _APRequestGetAvailableInterests_H_
#define _APRequestGetAvailableInterests_H_

#include "J2ObjC_header.h"
#include "im/actor/model/network/parser/Request.h"

@class BSBserValues;
@class BSBserWriter;
@class IOSByteArray;

#define APRequestGetAvailableInterests_HEADER 152

@interface APRequestGetAvailableInterests : APRequest

#pragma mark Public

- (instancetype)init;

+ (APRequestGetAvailableInterests *)fromBytesWithByteArray:(IOSByteArray *)data;

- (jint)getHeaderKey;

- (void)parseWithBSBserValues:(BSBserValues *)values;

- (void)serializeWithBSBserWriter:(BSBserWriter *)writer;

- (NSString *)description;

@end

J2OBJC_EMPTY_STATIC_INIT(APRequestGetAvailableInterests)

J2OBJC_STATIC_FIELD_GETTER(APRequestGetAvailableInterests, HEADER, jint)

FOUNDATION_EXPORT APRequestGetAvailableInterests *APRequestGetAvailableInterests_fromBytesWithByteArray_(IOSByteArray *data);

FOUNDATION_EXPORT void APRequestGetAvailableInterests_init(APRequestGetAvailableInterests *self);

FOUNDATION_EXPORT APRequestGetAvailableInterests *new_APRequestGetAvailableInterests_init() NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(APRequestGetAvailableInterests)

typedef APRequestGetAvailableInterests ImActorModelApiRpcRequestGetAvailableInterests;

#endif // _APRequestGetAvailableInterests_H_