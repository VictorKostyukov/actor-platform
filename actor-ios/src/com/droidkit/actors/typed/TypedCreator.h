//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/actor-ios/build/java/com/droidkit/actors/typed/TypedCreator.java
//

#ifndef _ComDroidkitActorsTypedTypedCreator_H_
#define _ComDroidkitActorsTypedTypedCreator_H_

@class DAActorRef;
@class IOSClass;
@class IOSObjectArray;
@class JavaLangReflectMethod;

#include "J2ObjC_header.h"
#include "java/lang/reflect/InvocationHandler.h"

@interface ComDroidkitActorsTypedTypedCreator : NSObject {
}

+ (id)typedWithDAActorRef:(DAActorRef *)ref
             withIOSClass:(IOSClass *)tClass;

- (instancetype)init;

@end

J2OBJC_EMPTY_STATIC_INIT(ComDroidkitActorsTypedTypedCreator)

CF_EXTERN_C_BEGIN

FOUNDATION_EXPORT id ComDroidkitActorsTypedTypedCreator_typedWithDAActorRef_withIOSClass_(DAActorRef *ref, IOSClass *tClass);
CF_EXTERN_C_END

J2OBJC_TYPE_LITERAL_HEADER(ComDroidkitActorsTypedTypedCreator)

@interface ComDroidkitActorsTypedTypedCreator_$1 : NSObject < JavaLangReflectInvocationHandler > {
}

- (id)invokeWithId:(id)proxy
withJavaLangReflectMethod:(JavaLangReflectMethod *)method
 withNSObjectArray:(IOSObjectArray *)args;

- (instancetype)initWithDAActorRef:(DAActorRef *)capture$0;

@end

J2OBJC_EMPTY_STATIC_INIT(ComDroidkitActorsTypedTypedCreator_$1)

CF_EXTERN_C_BEGIN
CF_EXTERN_C_END

J2OBJC_TYPE_LITERAL_HEADER(ComDroidkitActorsTypedTypedCreator_$1)

#endif // _ComDroidkitActorsTypedTypedCreator_H_