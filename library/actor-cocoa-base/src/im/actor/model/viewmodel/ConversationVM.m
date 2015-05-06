//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/library/actor-cocoa-base/build/java/im/actor/model/viewmodel/ConversationVM.java
//


#line 1 "/Users/ex3ndr/Develop/actor-model/library/actor-cocoa-base/build/java/im/actor/model/viewmodel/ConversationVM.java"

#include "J2ObjC_source.h"
#include "im/actor/model/entity/Message.h"
#include "im/actor/model/entity/Peer.h"
#include "im/actor/model/modules/Auth.h"
#include "im/actor/model/modules/Messages.h"
#include "im/actor/model/modules/Modules.h"
#include "im/actor/model/mvvm/BindedDisplayList.h"
#include "im/actor/model/mvvm/DisplayList.h"
#include "im/actor/model/viewmodel/ConversationVM.h"
#include "im/actor/model/viewmodel/ConversationVMCallback.h"

@interface AMConversationVM () {
 @public
  AMBindedDisplayList *displayList_;
  id<AMDisplayList_Listener> listener_;
  jboolean isLoaded_;
}

@end

J2OBJC_FIELD_SETTER(AMConversationVM, displayList_, AMBindedDisplayList *)
J2OBJC_FIELD_SETTER(AMConversationVM, listener_, id<AMDisplayList_Listener>)

@interface AMConversationVM_$1 : NSObject < AMDisplayList_Listener > {
 @public
  AMConversationVM *this$0_;
  AMBindedDisplayList *val$displayList_;
  ImActorModelModulesModules *val$modules_;
  AMPeer *val$peer_;
  id<AMConversationVMCallback> val$callback_;
}

- (void)onCollectionChanged;

- (instancetype)initWithAMConversationVM:(AMConversationVM *)outer$
                 withAMBindedDisplayList:(AMBindedDisplayList *)capture$0
          withImActorModelModulesModules:(ImActorModelModulesModules *)capture$1
                              withAMPeer:(AMPeer *)capture$2
            withAMConversationVMCallback:(id<AMConversationVMCallback>)capture$3;

@end

J2OBJC_EMPTY_STATIC_INIT(AMConversationVM_$1)

J2OBJC_FIELD_SETTER(AMConversationVM_$1, this$0_, AMConversationVM *)
J2OBJC_FIELD_SETTER(AMConversationVM_$1, val$displayList_, AMBindedDisplayList *)
J2OBJC_FIELD_SETTER(AMConversationVM_$1, val$modules_, ImActorModelModulesModules *)
J2OBJC_FIELD_SETTER(AMConversationVM_$1, val$peer_, AMPeer *)
J2OBJC_FIELD_SETTER(AMConversationVM_$1, val$callback_, id<AMConversationVMCallback>)

__attribute__((unused)) static void AMConversationVM_$1_initWithAMConversationVM_withAMBindedDisplayList_withImActorModelModulesModules_withAMPeer_withAMConversationVMCallback_(AMConversationVM_$1 *self, AMConversationVM *outer$, AMBindedDisplayList *capture$0, ImActorModelModulesModules *capture$1, AMPeer *capture$2, id<AMConversationVMCallback> capture$3);

__attribute__((unused)) static AMConversationVM_$1 *new_AMConversationVM_$1_initWithAMConversationVM_withAMBindedDisplayList_withImActorModelModulesModules_withAMPeer_withAMConversationVMCallback_(AMConversationVM *outer$, AMBindedDisplayList *capture$0, ImActorModelModulesModules *capture$1, AMPeer *capture$2, id<AMConversationVMCallback> capture$3) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(AMConversationVM_$1)


#line 13
@implementation AMConversationVM


#line 18
- (instancetype)initWithAMPeer:(AMPeer *)peer
  withAMConversationVMCallback:(id<AMConversationVMCallback>)callback
withImActorModelModulesModules:(ImActorModelModulesModules *)modules
       withAMBindedDisplayList:(AMBindedDisplayList *)displayList {
  AMConversationVM_initWithAMPeer_withAMConversationVMCallback_withImActorModelModulesModules_withAMBindedDisplayList_(self, peer, callback, modules, displayList);
  return self;
}


#line 64
- (void)release__ {
  [((AMBindedDisplayList *) nil_chk(displayList_)) removeListenerWithAMDisplayList_Listener:listener_];
}

@end


#line 18
void AMConversationVM_initWithAMPeer_withAMConversationVMCallback_withImActorModelModulesModules_withAMBindedDisplayList_(AMConversationVM *self, AMPeer *peer, id<AMConversationVMCallback> callback, ImActorModelModulesModules *modules, AMBindedDisplayList *displayList) {
  (void) NSObject_init(self);
  self->isLoaded_ =
#line 16
  NO;
  
#line 19
  self->displayList_ = displayList;
  self->listener_ = new_AMConversationVM_$1_initWithAMConversationVM_withAMBindedDisplayList_withImActorModelModulesModules_withAMPeer_withAMConversationVMCallback_(self, displayList, modules, peer, callback);
  
#line 60
  [((AMBindedDisplayList *) nil_chk(self->displayList_)) addListenerWithAMDisplayList_Listener:self->listener_];
  [self->listener_ onCollectionChanged];
}


#line 18
AMConversationVM *new_AMConversationVM_initWithAMPeer_withAMConversationVMCallback_withImActorModelModulesModules_withAMBindedDisplayList_(AMPeer *peer, id<AMConversationVMCallback> callback, ImActorModelModulesModules *modules, AMBindedDisplayList *displayList) {
  AMConversationVM *self = [AMConversationVM alloc];
  AMConversationVM_initWithAMPeer_withAMConversationVMCallback_withImActorModelModulesModules_withAMBindedDisplayList_(self, peer, callback, modules, displayList);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(AMConversationVM)

@implementation AMConversationVM_$1


#line 22
- (void)onCollectionChanged {
  if (this$0_->isLoaded_) {
    return;
  }
  
#line 27
  if ([((AMBindedDisplayList *) nil_chk(val$displayList_)) getSize] == 0) {
    return;
  }
  
#line 31
  this$0_->isLoaded_ = YES;
  jlong lastRead = [((ImActorModelModulesMessages *) nil_chk([((ImActorModelModulesModules *) nil_chk(val$modules_)) getMessagesModule])) loadReadStateWithAMPeer:val$peer_];
  
#line 34
  if (lastRead == 0) {
    
#line 36
    return;
  }
  
#line 39
  jint index = -1;
  jlong unread = -1;
  for (jint i = [val$displayList_ getSize] - 1; i >= 0; i--) {
    AMMessage *message = [val$displayList_ getItemWithInt:i];
    if ([((AMMessage *) nil_chk(message)) getSenderId] == [((ImActorModelModulesAuth *) nil_chk([val$modules_ getAuthModule])) myUid]) {
      continue;
    }
    if ([message getSortDate] > lastRead) {
      index = i;
      unread = [message getRid];
      break;
    }
  }
  
#line 53
  if (index >= 0) {
    [((id<AMConversationVMCallback>) nil_chk(val$callback_)) onLoadedWithLong:unread withInt:index];
  }
  else {
    
#line 56
    [((id<AMConversationVMCallback>) nil_chk(val$callback_)) onLoadedWithLong:0 withInt:0];
  }
}

- (instancetype)initWithAMConversationVM:(AMConversationVM *)outer$
                 withAMBindedDisplayList:(AMBindedDisplayList *)capture$0
          withImActorModelModulesModules:(ImActorModelModulesModules *)capture$1
                              withAMPeer:(AMPeer *)capture$2
            withAMConversationVMCallback:(id<AMConversationVMCallback>)capture$3 {
  AMConversationVM_$1_initWithAMConversationVM_withAMBindedDisplayList_withImActorModelModulesModules_withAMPeer_withAMConversationVMCallback_(self, outer$, capture$0, capture$1, capture$2, capture$3);
  return self;
}

@end

void AMConversationVM_$1_initWithAMConversationVM_withAMBindedDisplayList_withImActorModelModulesModules_withAMPeer_withAMConversationVMCallback_(AMConversationVM_$1 *self, AMConversationVM *outer$, AMBindedDisplayList *capture$0, ImActorModelModulesModules *capture$1, AMPeer *capture$2, id<AMConversationVMCallback> capture$3) {
  self->this$0_ = outer$;
  self->val$displayList_ = capture$0;
  self->val$modules_ = capture$1;
  self->val$peer_ = capture$2;
  self->val$callback_ = capture$3;
  (void) NSObject_init(self);
}

AMConversationVM_$1 *new_AMConversationVM_$1_initWithAMConversationVM_withAMBindedDisplayList_withImActorModelModulesModules_withAMPeer_withAMConversationVMCallback_(AMConversationVM *outer$, AMBindedDisplayList *capture$0, ImActorModelModulesModules *capture$1, AMPeer *capture$2, id<AMConversationVMCallback> capture$3) {
  AMConversationVM_$1 *self = [AMConversationVM_$1 alloc];
  AMConversationVM_$1_initWithAMConversationVM_withAMBindedDisplayList_withImActorModelModulesModules_withAMPeer_withAMConversationVMCallback_(self, outer$, capture$0, capture$1, capture$2, capture$3);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(AMConversationVM_$1)