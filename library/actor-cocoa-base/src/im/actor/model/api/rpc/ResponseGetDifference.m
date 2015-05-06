//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/library/actor-cocoa-base/build/java/im/actor/model/api/rpc/ResponseGetDifference.java
//


#line 1 "/Users/ex3ndr/Develop/actor-model/library/actor-cocoa-base/build/java/im/actor/model/api/rpc/ResponseGetDifference.java"

#include "IOSClass.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "im/actor/model/api/DifferenceUpdate.h"
#include "im/actor/model/api/Email.h"
#include "im/actor/model/api/Group.h"
#include "im/actor/model/api/Phone.h"
#include "im/actor/model/api/User.h"
#include "im/actor/model/api/rpc/ResponseGetDifference.h"
#include "im/actor/model/droidkit/bser/Bser.h"
#include "im/actor/model/droidkit/bser/BserObject.h"
#include "im/actor/model/droidkit/bser/BserValues.h"
#include "im/actor/model/droidkit/bser/BserWriter.h"
#include "im/actor/model/network/parser/Response.h"
#include "java/io/IOException.h"
#include "java/util/ArrayList.h"
#include "java/util/List.h"

@interface ImActorModelApiRpcResponseGetDifference () {
 @public
  jint seq_;
  IOSByteArray *state_;
  id<JavaUtilList> users_;
  id<JavaUtilList> groups_;
  id<JavaUtilList> phones_;
  id<JavaUtilList> emails_;
  id<JavaUtilList> updates_;
  jboolean needMore__;
}

@end

J2OBJC_FIELD_SETTER(ImActorModelApiRpcResponseGetDifference, state_, IOSByteArray *)
J2OBJC_FIELD_SETTER(ImActorModelApiRpcResponseGetDifference, users_, id<JavaUtilList>)
J2OBJC_FIELD_SETTER(ImActorModelApiRpcResponseGetDifference, groups_, id<JavaUtilList>)
J2OBJC_FIELD_SETTER(ImActorModelApiRpcResponseGetDifference, phones_, id<JavaUtilList>)
J2OBJC_FIELD_SETTER(ImActorModelApiRpcResponseGetDifference, emails_, id<JavaUtilList>)
J2OBJC_FIELD_SETTER(ImActorModelApiRpcResponseGetDifference, updates_, id<JavaUtilList>)


#line 24
@implementation ImActorModelApiRpcResponseGetDifference


#line 27
+ (ImActorModelApiRpcResponseGetDifference *)fromBytesWithByteArray:(IOSByteArray *)data {
  return ImActorModelApiRpcResponseGetDifference_fromBytesWithByteArray_(data);
}


#line 40
- (instancetype)initWithInt:(jint)seq
              withByteArray:(IOSByteArray *)state
           withJavaUtilList:(id<JavaUtilList>)users
           withJavaUtilList:(id<JavaUtilList>)groups
           withJavaUtilList:(id<JavaUtilList>)phones
           withJavaUtilList:(id<JavaUtilList>)emails
           withJavaUtilList:(id<JavaUtilList>)updates
                withBoolean:(jboolean)needMore {
  ImActorModelApiRpcResponseGetDifference_initWithInt_withByteArray_withJavaUtilList_withJavaUtilList_withJavaUtilList_withJavaUtilList_withJavaUtilList_withBoolean_(self, seq, state, users, groups, phones, emails, updates, needMore);
  return self;
}


#line 51
- (instancetype)init {
  ImActorModelApiRpcResponseGetDifference_init(self);
  return self;
}


#line 55
- (jint)getSeq {
  return self->seq_;
}

- (IOSByteArray *)getState {
  return self->state_;
}

- (id<JavaUtilList>)getUsers {
  return self->users_;
}

- (id<JavaUtilList>)getGroups {
  return self->groups_;
}

- (id<JavaUtilList>)getPhones {
  return self->phones_;
}

- (id<JavaUtilList>)getEmails {
  return self->emails_;
}

- (id<JavaUtilList>)getUpdates {
  return self->updates_;
}

- (jboolean)needMore {
  return self->needMore__;
}


#line 88
- (void)parseWithBSBserValues:(BSBserValues *)values {
  self->seq_ = [((BSBserValues *) nil_chk(values)) getIntWithInt:1];
  self->state_ = [values getBytesWithInt:2];
  id<JavaUtilList> _users = new_JavaUtilArrayList_init();
  for (jint i = 0; i < [values getRepeatedCountWithInt:3]; i++) {
    [_users addWithId:new_ImActorModelApiUser_init()];
  }
  self->users_ = [values getRepeatedObjWithInt:3 withJavaUtilList:_users];
  id<JavaUtilList> _groups = new_JavaUtilArrayList_init();
  for (jint i = 0; i < [values getRepeatedCountWithInt:6]; i++) {
    [_groups addWithId:new_ImActorModelApiGroup_init()];
  }
  self->groups_ = [values getRepeatedObjWithInt:6 withJavaUtilList:_groups];
  id<JavaUtilList> _phones = new_JavaUtilArrayList_init();
  for (jint i = 0; i < [values getRepeatedCountWithInt:7]; i++) {
    [_phones addWithId:new_ImActorModelApiPhone_init()];
  }
  self->phones_ = [values getRepeatedObjWithInt:7 withJavaUtilList:_phones];
  id<JavaUtilList> _emails = new_JavaUtilArrayList_init();
  for (jint i = 0; i < [values getRepeatedCountWithInt:8]; i++) {
    [_emails addWithId:new_ImActorModelApiEmail_init()];
  }
  self->emails_ = [values getRepeatedObjWithInt:8 withJavaUtilList:_emails];
  id<JavaUtilList> _updates = new_JavaUtilArrayList_init();
  for (jint i = 0; i < [values getRepeatedCountWithInt:4]; i++) {
    [_updates addWithId:new_ImActorModelApiDifferenceUpdate_init()];
  }
  self->updates_ = [values getRepeatedObjWithInt:4 withJavaUtilList:_updates];
  self->needMore__ = [values getBoolWithInt:5];
}


#line 120
- (void)serializeWithBSBserWriter:(BSBserWriter *)writer {
  [((BSBserWriter *) nil_chk(writer)) writeIntWithInt:1 withInt:self->seq_];
  if (self->state_ == nil) {
    @throw new_JavaIoIOException_init();
  }
  [writer writeBytesWithInt:2 withByteArray:self->state_];
  [writer writeRepeatedObjWithInt:3 withJavaUtilList:self->users_];
  [writer writeRepeatedObjWithInt:6 withJavaUtilList:self->groups_];
  [writer writeRepeatedObjWithInt:7 withJavaUtilList:self->phones_];
  [writer writeRepeatedObjWithInt:8 withJavaUtilList:self->emails_];
  [writer writeRepeatedObjWithInt:4 withJavaUtilList:self->updates_];
  [writer writeBoolWithInt:5 withBoolean:self->needMore__];
}


#line 135
- (NSString *)description {
  NSString *res = @"tuple GetDifference{";
  res = JreStrcat("$C", res, '}');
  return res;
}


#line 142
- (jint)getHeaderKey {
  return ImActorModelApiRpcResponseGetDifference_HEADER;
}

@end


#line 27
ImActorModelApiRpcResponseGetDifference *ImActorModelApiRpcResponseGetDifference_fromBytesWithByteArray_(IOSByteArray *data) {
  ImActorModelApiRpcResponseGetDifference_initialize();
  
#line 28
  return ((ImActorModelApiRpcResponseGetDifference *) BSBser_parseWithBSBserObject_withByteArray_(new_ImActorModelApiRpcResponseGetDifference_init(), data));
}


#line 40
void ImActorModelApiRpcResponseGetDifference_initWithInt_withByteArray_withJavaUtilList_withJavaUtilList_withJavaUtilList_withJavaUtilList_withJavaUtilList_withBoolean_(ImActorModelApiRpcResponseGetDifference *self, jint seq, IOSByteArray *state, id<JavaUtilList> users, id<JavaUtilList> groups, id<JavaUtilList> phones, id<JavaUtilList> emails, id<JavaUtilList> updates, jboolean needMore) {
  (void) ImActorModelNetworkParserResponse_init(self);
  
#line 41
  self->seq_ = seq;
  self->state_ = state;
  self->users_ = users;
  self->groups_ = groups;
  self->phones_ = phones;
  self->emails_ = emails;
  self->updates_ = updates;
  self->needMore__ = needMore;
}


#line 40
ImActorModelApiRpcResponseGetDifference *new_ImActorModelApiRpcResponseGetDifference_initWithInt_withByteArray_withJavaUtilList_withJavaUtilList_withJavaUtilList_withJavaUtilList_withJavaUtilList_withBoolean_(jint seq, IOSByteArray *state, id<JavaUtilList> users, id<JavaUtilList> groups, id<JavaUtilList> phones, id<JavaUtilList> emails, id<JavaUtilList> updates, jboolean needMore) {
  ImActorModelApiRpcResponseGetDifference *self = [ImActorModelApiRpcResponseGetDifference alloc];
  ImActorModelApiRpcResponseGetDifference_initWithInt_withByteArray_withJavaUtilList_withJavaUtilList_withJavaUtilList_withJavaUtilList_withJavaUtilList_withBoolean_(self, seq, state, users, groups, phones, emails, updates, needMore);
  return self;
}


#line 51
void ImActorModelApiRpcResponseGetDifference_init(ImActorModelApiRpcResponseGetDifference *self) {
  (void) ImActorModelNetworkParserResponse_init(self);
}


#line 51
ImActorModelApiRpcResponseGetDifference *new_ImActorModelApiRpcResponseGetDifference_init() {
  ImActorModelApiRpcResponseGetDifference *self = [ImActorModelApiRpcResponseGetDifference alloc];
  ImActorModelApiRpcResponseGetDifference_init(self);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ImActorModelApiRpcResponseGetDifference)