//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-platform/actor-apps/core/src/main/java/im/actor/model/entity/compat/content/ObsoleteFileSource.java
//

#ifndef _ImActorModelEntityCompatContentObsoleteFileSource_H_
#define _ImActorModelEntityCompatContentObsoleteFileSource_H_

#include "J2ObjC_header.h"
#include "im/actor/model/droidkit/bser/BserObject.h"

@class IOSByteArray;

@interface ImActorModelEntityCompatContentObsoleteFileSource : BSBserObject

#pragma mark Public

- (instancetype)init;

+ (ImActorModelEntityCompatContentObsoleteFileSource *)fromBytesWithByteArray:(IOSByteArray *)data;

@end

J2OBJC_EMPTY_STATIC_INIT(ImActorModelEntityCompatContentObsoleteFileSource)

FOUNDATION_EXPORT ImActorModelEntityCompatContentObsoleteFileSource *ImActorModelEntityCompatContentObsoleteFileSource_fromBytesWithByteArray_(IOSByteArray *data);

FOUNDATION_EXPORT void ImActorModelEntityCompatContentObsoleteFileSource_init(ImActorModelEntityCompatContentObsoleteFileSource *self);

J2OBJC_TYPE_LITERAL_HEADER(ImActorModelEntityCompatContentObsoleteFileSource)

#endif // _ImActorModelEntityCompatContentObsoleteFileSource_H_
