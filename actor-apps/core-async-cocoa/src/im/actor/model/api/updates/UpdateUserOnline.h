//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-platform/actor-apps/core/src/main/java/im/actor/model/api/updates/UpdateUserOnline.java
//

#ifndef _APUpdateUserOnline_H_
#define _APUpdateUserOnline_H_

#include "J2ObjC_header.h"
#include "im/actor/model/network/parser/Update.h"

@class BSBserValues;
@class BSBserWriter;
@class IOSByteArray;

#define APUpdateUserOnline_HEADER 7

@interface APUpdateUserOnline : APUpdate

#pragma mark Public

- (instancetype)init;

- (instancetype)initWithInt:(jint)uid;

+ (APUpdateUserOnline *)fromBytesWithByteArray:(IOSByteArray *)data;

- (jint)getHeaderKey;

- (jint)getUid;

- (void)parseWithBSBserValues:(BSBserValues *)values;

- (void)serializeWithBSBserWriter:(BSBserWriter *)writer;

- (NSString *)description;

@end

J2OBJC_EMPTY_STATIC_INIT(APUpdateUserOnline)

J2OBJC_STATIC_FIELD_GETTER(APUpdateUserOnline, HEADER, jint)

FOUNDATION_EXPORT APUpdateUserOnline *APUpdateUserOnline_fromBytesWithByteArray_(IOSByteArray *data);

FOUNDATION_EXPORT void APUpdateUserOnline_initWithInt_(APUpdateUserOnline *self, jint uid);

FOUNDATION_EXPORT APUpdateUserOnline *new_APUpdateUserOnline_initWithInt_(jint uid) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT void APUpdateUserOnline_init(APUpdateUserOnline *self);

FOUNDATION_EXPORT APUpdateUserOnline *new_APUpdateUserOnline_init() NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(APUpdateUserOnline)

typedef APUpdateUserOnline ImActorModelApiUpdatesUpdateUserOnline;

#endif // _APUpdateUserOnline_H_
