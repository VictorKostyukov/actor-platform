//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/actor-ios/build/java/im/actor/model/api/MessageContent.java
//

#ifndef _ImActorModelApiMessageContent_H_
#define _ImActorModelApiMessageContent_H_

@class BSBserValues;
@class BSBserWriter;
@class IOSByteArray;

#include "J2ObjC_header.h"
#include "im/actor/model/droidkit/bser/BserObject.h"

@interface ImActorModelApiMessageContent : BSBserObject {
}

- (instancetype)initWithInt:(jint)type
              withByteArray:(IOSByteArray *)content;

- (instancetype)init;

- (jint)getType;

- (IOSByteArray *)getContent;

- (void)parseWithBSBserValues:(BSBserValues *)values;

- (void)serializeWithBSBserWriter:(BSBserWriter *)writer;

- (NSString *)description;

@end

J2OBJC_EMPTY_STATIC_INIT(ImActorModelApiMessageContent)

CF_EXTERN_C_BEGIN
CF_EXTERN_C_END

J2OBJC_TYPE_LITERAL_HEADER(ImActorModelApiMessageContent)

#endif // _ImActorModelApiMessageContent_H_