//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/actor-ios/build/java/com/droidkit/actors/CurrentActor.java
//

#ifndef _DACurrentActor_H_
#define _DACurrentActor_H_

@class DAActor;
@class JavaLangThreadLocal;

#include "J2ObjC_header.h"

@interface DACurrentActor : NSObject {
}

+ (void)setCurrentActorWithDAActor:(DAActor *)actor;

+ (DAActor *)getCurrentActor;

- (instancetype)init;

@end

FOUNDATION_EXPORT BOOL DACurrentActor_initialized;
J2OBJC_STATIC_INIT(DACurrentActor)

CF_EXTERN_C_BEGIN

FOUNDATION_EXPORT void DACurrentActor_setCurrentActorWithDAActor_(DAActor *actor);

FOUNDATION_EXPORT DAActor *DACurrentActor_getCurrentActor();

FOUNDATION_EXPORT JavaLangThreadLocal *DACurrentActor_currentActor_;
J2OBJC_STATIC_FIELD_GETTER(DACurrentActor, currentActor_, JavaLangThreadLocal *)
J2OBJC_STATIC_FIELD_SETTER(DACurrentActor, currentActor_, JavaLangThreadLocal *)
CF_EXTERN_C_END

typedef DACurrentActor ComDroidkitActorsCurrentActor;

J2OBJC_TYPE_LITERAL_HEADER(DACurrentActor)

#endif // _DACurrentActor_H_