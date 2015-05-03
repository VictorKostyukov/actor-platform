//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/library/actor-cocoa-base/build/java/im/actor/model/droidkit/engine/ObjectCache.java
//

#ifndef _DKObjectCache_H_
#define _DKObjectCache_H_

#include "J2ObjC_header.h"

@class JavaUtilHashMap;
@class JavaUtilHashSet;

@interface DKObjectCache : NSObject {
 @public
  JavaUtilHashMap *memoryCache_;
  JavaUtilHashSet *removedItems_;
}

#pragma mark Public

- (void)clear;

- (id)lookupWithId:(id)key;

- (void)onObjectLoadedWithId:(id)key
                      withId:(id)value;

- (void)onObjectUpdatedWithId:(id)key
                       withId:(id)value;

- (void)removeObjectWithId:(id)key;

- (void)startLock;

- (void)stopLock;

#pragma mark Package-Private

- (instancetype)init;

@end

J2OBJC_EMPTY_STATIC_INIT(DKObjectCache)

J2OBJC_FIELD_SETTER(DKObjectCache, memoryCache_, JavaUtilHashMap *)
J2OBJC_FIELD_SETTER(DKObjectCache, removedItems_, JavaUtilHashSet *)

FOUNDATION_EXPORT void DKObjectCache_init(DKObjectCache *self);

FOUNDATION_EXPORT DKObjectCache *new_DKObjectCache_init() NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(DKObjectCache)

typedef DKObjectCache ImActorModelDroidkitEngineObjectCache;

#endif // _DKObjectCache_H_