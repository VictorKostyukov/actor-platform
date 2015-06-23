//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-platform/actor-apps/library/core/src/main/java/im/actor/model/modules/messages/entity/PendingMessage.java
//

#ifndef _ImActorModelModulesMessagesEntityPendingMessage_H_
#define _ImActorModelModulesMessagesEntityPendingMessage_H_

#include "J2ObjC_header.h"
#include "im/actor/model/droidkit/bser/BserObject.h"

@class AMAbsContent;
@class AMPeer;
@class BSBserValues;
@class BSBserWriter;
@class IOSByteArray;

@interface ImActorModelModulesMessagesEntityPendingMessage : BSBserObject

#pragma mark Public

- (instancetype)initWithAMPeer:(AMPeer *)peer
                      withLong:(jlong)rid
              withAMAbsContent:(AMAbsContent *)content;

+ (ImActorModelModulesMessagesEntityPendingMessage *)fromBytesWithByteArray:(IOSByteArray *)data;

- (AMAbsContent *)getContent;

- (AMPeer *)getPeer;

- (jlong)getRid;

- (jboolean)isError;

- (void)parseWithBSBserValues:(BSBserValues *)values;

- (void)serializeWithBSBserWriter:(BSBserWriter *)writer;

@end

J2OBJC_EMPTY_STATIC_INIT(ImActorModelModulesMessagesEntityPendingMessage)

FOUNDATION_EXPORT ImActorModelModulesMessagesEntityPendingMessage *ImActorModelModulesMessagesEntityPendingMessage_fromBytesWithByteArray_(IOSByteArray *data);

FOUNDATION_EXPORT void ImActorModelModulesMessagesEntityPendingMessage_initWithAMPeer_withLong_withAMAbsContent_(ImActorModelModulesMessagesEntityPendingMessage *self, AMPeer *peer, jlong rid, AMAbsContent *content);

FOUNDATION_EXPORT ImActorModelModulesMessagesEntityPendingMessage *new_ImActorModelModulesMessagesEntityPendingMessage_initWithAMPeer_withLong_withAMAbsContent_(AMPeer *peer, jlong rid, AMAbsContent *content) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ImActorModelModulesMessagesEntityPendingMessage)

#endif // _ImActorModelModulesMessagesEntityPendingMessage_H_