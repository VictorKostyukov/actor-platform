//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-platform/actor-apps/library/core/src/main/java/im/actor/model/entity/content/AbsContent.java
//


#include "IOSClass.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "im/actor/model/api/DocumentEx.h"
#include "im/actor/model/api/DocumentExPhoto.h"
#include "im/actor/model/api/DocumentExVideo.h"
#include "im/actor/model/api/DocumentMessage.h"
#include "im/actor/model/api/JsonMessage.h"
#include "im/actor/model/api/Message.h"
#include "im/actor/model/api/ServiceEx.h"
#include "im/actor/model/api/ServiceExChangedAvatar.h"
#include "im/actor/model/api/ServiceExChangedTitle.h"
#include "im/actor/model/api/ServiceExContactRegistered.h"
#include "im/actor/model/api/ServiceExGroupCreated.h"
#include "im/actor/model/api/ServiceExUserInvited.h"
#include "im/actor/model/api/ServiceExUserJoined.h"
#include "im/actor/model/api/ServiceExUserKicked.h"
#include "im/actor/model/api/ServiceExUserLeft.h"
#include "im/actor/model/api/ServiceMessage.h"
#include "im/actor/model/api/TextMessage.h"
#include "im/actor/model/droidkit/bser/BserParser.h"
#include "im/actor/model/droidkit/bser/BserValues.h"
#include "im/actor/model/droidkit/bser/BserWriter.h"
#include "im/actor/model/droidkit/bser/DataInput.h"
#include "im/actor/model/droidkit/bser/DataOutput.h"
#include "im/actor/model/droidkit/bser/util/SparseArray.h"
#include "im/actor/model/droidkit/json/JSONObject.h"
#include "im/actor/model/entity/compat/content/ObsoleteContent.h"
#include "im/actor/model/entity/content/AbsContent.h"
#include "im/actor/model/entity/content/BannerContent.h"
#include "im/actor/model/entity/content/DocumentContent.h"
#include "im/actor/model/entity/content/PhotoContent.h"
#include "im/actor/model/entity/content/ServiceContent.h"
#include "im/actor/model/entity/content/ServiceGroupAvatarChanged.h"
#include "im/actor/model/entity/content/ServiceGroupCreated.h"
#include "im/actor/model/entity/content/ServiceGroupTitleChanged.h"
#include "im/actor/model/entity/content/ServiceGroupUserInvited.h"
#include "im/actor/model/entity/content/ServiceGroupUserJoined.h"
#include "im/actor/model/entity/content/ServiceGroupUserKicked.h"
#include "im/actor/model/entity/content/ServiceGroupUserLeave.h"
#include "im/actor/model/entity/content/ServiceUserRegistered.h"
#include "im/actor/model/entity/content/TextContent.h"
#include "im/actor/model/entity/content/UnsupportedContent.h"
#include "im/actor/model/entity/content/VideoContent.h"
#include "im/actor/model/entity/content/internal/AbsContentContainer.h"
#include "im/actor/model/entity/content/internal/AbsLocalContent.h"
#include "im/actor/model/entity/content/internal/ContentLocalContainer.h"
#include "im/actor/model/entity/content/internal/ContentRemoteContainer.h"
#include "im/actor/model/entity/content/internal/LocalDocument.h"
#include "im/actor/model/entity/content/internal/LocalPhoto.h"
#include "im/actor/model/entity/content/internal/LocalVideo.h"
#include "java/io/IOException.h"
#include "java/lang/Exception.h"

@interface AMAbsContent () {
 @public
  ImActorModelEntityContentInternalAbsContentContainer *contentContainer_;
}

@end

J2OBJC_FIELD_SETTER(AMAbsContent, contentContainer_, ImActorModelEntityContentInternalAbsContentContainer *)

@implementation AMAbsContent

+ (IOSByteArray *)serializeWithAMAbsContent:(AMAbsContent *)content {
  return AMAbsContent_serializeWithAMAbsContent_(content);
}

+ (AMAbsContent *)fromMessageWithAPMessage:(APMessage *)message {
  return AMAbsContent_fromMessageWithAPMessage_(message);
}

+ (AMAbsContent *)parseWithByteArray:(IOSByteArray *)data {
  return AMAbsContent_parseWithByteArray_(data);
}

+ (AMAbsContent *)convertDataWithImActorModelEntityContentInternalAbsContentContainer:(ImActorModelEntityContentInternalAbsContentContainer *)container {
  return AMAbsContent_convertDataWithImActorModelEntityContentInternalAbsContentContainer_(container);
}

- (instancetype)initWithImActorModelEntityContentInternalContentRemoteContainer:(ImActorModelEntityContentInternalContentRemoteContainer *)contentContainer {
  AMAbsContent_initWithImActorModelEntityContentInternalContentRemoteContainer_(self, contentContainer);
  return self;
}

- (instancetype)initWithImActorModelEntityContentInternalContentLocalContainer:(ImActorModelEntityContentInternalContentLocalContainer *)contentContainer {
  AMAbsContent_initWithImActorModelEntityContentInternalContentLocalContainer_(self, contentContainer);
  return self;
}

- (ImActorModelEntityContentInternalAbsContentContainer *)getContentContainer {
  return contentContainer_;
}

@end

IOSByteArray *AMAbsContent_serializeWithAMAbsContent_(AMAbsContent *content) {
  AMAbsContent_initialize();
  BSDataOutput *dataOutput = new_BSDataOutput_init();
  BSBserWriter *writer = new_BSBserWriter_initWithBSDataOutput_(dataOutput);
  [writer writeBoolWithInt:32 withBoolean:YES];
  [writer writeBytesWithInt:33 withByteArray:[((ImActorModelEntityContentInternalAbsContentContainer *) nil_chk([((AMAbsContent *) nil_chk(content)) getContentContainer])) buildContainer]];
  return [dataOutput toByteArray];
}

AMAbsContent *AMAbsContent_fromMessageWithAPMessage_(APMessage *message) {
  AMAbsContent_initialize();
  return AMAbsContent_convertDataWithImActorModelEntityContentInternalAbsContentContainer_(new_ImActorModelEntityContentInternalContentRemoteContainer_initWithAPMessage_(message));
}

AMAbsContent *AMAbsContent_parseWithByteArray_(IOSByteArray *data) {
  AMAbsContent_initialize();
  BSBserValues *reader = new_BSBserValues_initWithImActorModelDroidkitBserUtilSparseArray_(BSBserParser_deserializeWithBSDataInput_(new_BSDataInput_initWithByteArray_(data)));
  ImActorModelEntityContentInternalAbsContentContainer *container;
  if ([reader getBoolWithInt:32 withBoolean:NO]) {
    container = ImActorModelEntityContentInternalAbsContentContainer_loadContainerWithByteArray_([reader getBytesWithInt:33]);
  }
  else {
    container = ImActorModelEntityCompatContentObsoleteContent_contentFromValuesWithBSBserValues_(reader);
  }
  return AMAbsContent_convertDataWithImActorModelEntityContentInternalAbsContentContainer_(container);
}

AMAbsContent *AMAbsContent_convertDataWithImActorModelEntityContentInternalAbsContentContainer_(ImActorModelEntityContentInternalAbsContentContainer *container) {
  AMAbsContent_initialize();
  if ([container isKindOfClass:[ImActorModelEntityContentInternalContentLocalContainer class]]) {
    ImActorModelEntityContentInternalContentLocalContainer *localContainer = (ImActorModelEntityContentInternalContentLocalContainer *) check_class_cast(container, [ImActorModelEntityContentInternalContentLocalContainer class]);
    ImActorModelEntityContentInternalAbsLocalContent *content = [((ImActorModelEntityContentInternalContentLocalContainer *) nil_chk(((ImActorModelEntityContentInternalContentLocalContainer *) check_class_cast(container, [ImActorModelEntityContentInternalContentLocalContainer class])))) getContent];
    if ([content isKindOfClass:[ImActorModelEntityContentInternalLocalPhoto class]]) {
      return new_AMPhotoContent_initWithImActorModelEntityContentInternalContentLocalContainer_(localContainer);
    }
    else if ([content isKindOfClass:[ImActorModelEntityContentInternalLocalVideo class]]) {
      return new_AMVideoContent_initWithImActorModelEntityContentInternalContentLocalContainer_(localContainer);
    }
    else if ([content isKindOfClass:[ImActorModelEntityContentInternalLocalDocument class]]) {
      return new_AMDocumentContent_initWithImActorModelEntityContentInternalContentLocalContainer_(localContainer);
    }
    else {
      @throw new_JavaIoIOException_initWithNSString_(@"Unknown type");
    }
  }
  else if ([container isKindOfClass:[ImActorModelEntityContentInternalContentRemoteContainer class]]) {
    ImActorModelEntityContentInternalContentRemoteContainer *remoteContainer = (ImActorModelEntityContentInternalContentRemoteContainer *) check_class_cast(container, [ImActorModelEntityContentInternalContentRemoteContainer class]);
    APMessage *content = [((ImActorModelEntityContentInternalContentRemoteContainer *) nil_chk(((ImActorModelEntityContentInternalContentRemoteContainer *) check_class_cast(container, [ImActorModelEntityContentInternalContentRemoteContainer class])))) getMessage];
    @try {
      if ([content isKindOfClass:[APDocumentMessage class]]) {
        APDocumentMessage *d = (APDocumentMessage *) check_class_cast(content, [APDocumentMessage class]);
        if ([[((APDocumentMessage *) nil_chk(d)) getExt] isKindOfClass:[APDocumentExPhoto class]]) {
          return new_AMPhotoContent_initWithImActorModelEntityContentInternalContentRemoteContainer_(remoteContainer);
        }
        else if ([[d getExt] isKindOfClass:[APDocumentExVideo class]]) {
          return new_AMVideoContent_initWithImActorModelEntityContentInternalContentRemoteContainer_(remoteContainer);
        }
        else {
          return new_AMDocumentContent_initWithImActorModelEntityContentInternalContentRemoteContainer_(remoteContainer);
        }
      }
      else if ([content isKindOfClass:[APTextMessage class]]) {
        return new_AMTextContent_initWithImActorModelEntityContentInternalContentRemoteContainer_(remoteContainer);
      }
      else if ([content isKindOfClass:[APServiceMessage class]]) {
        APServiceEx *ext = [((APServiceMessage *) nil_chk(((APServiceMessage *) check_class_cast(content, [APServiceMessage class])))) getExt];
        if ([ext isKindOfClass:[APServiceExContactRegistered class]]) {
          return new_AMServiceUserRegistered_initWithImActorModelEntityContentInternalContentRemoteContainer_(remoteContainer);
        }
        else if ([ext isKindOfClass:[APServiceExChangedTitle class]]) {
          return new_AMServiceGroupTitleChanged_initWithImActorModelEntityContentInternalContentRemoteContainer_(remoteContainer);
        }
        else if ([ext isKindOfClass:[APServiceExChangedAvatar class]]) {
          return new_AMServiceGroupAvatarChanged_initWithImActorModelEntityContentInternalContentRemoteContainer_(remoteContainer);
        }
        else if ([ext isKindOfClass:[APServiceExGroupCreated class]]) {
          return new_AMServiceGroupCreated_initWithImActorModelEntityContentInternalContentRemoteContainer_(remoteContainer);
        }
        else if ([ext isKindOfClass:[APServiceExUserInvited class]]) {
          return new_AMServiceGroupUserInvited_initWithImActorModelEntityContentInternalContentRemoteContainer_(remoteContainer);
        }
        else if ([ext isKindOfClass:[APServiceExUserKicked class]]) {
          return new_AMServiceGroupUserKicked_initWithImActorModelEntityContentInternalContentRemoteContainer_(remoteContainer);
        }
        else if ([ext isKindOfClass:[APServiceExUserLeft class]]) {
          return new_AMServiceGroupUserLeave_initWithImActorModelEntityContentInternalContentRemoteContainer_(remoteContainer);
        }
        else if ([ext isKindOfClass:[APServiceExUserJoined class]]) {
          return new_AMServiceGroupUserJoined_initWithImActorModelEntityContentInternalContentRemoteContainer_(remoteContainer);
        }
        else {
          return new_AMServiceContent_initWithImActorModelEntityContentInternalContentRemoteContainer_(remoteContainer);
        }
      }
      else if ([content isKindOfClass:[APJsonMessage class]]) {
        APJsonMessage *json = (APJsonMessage *) check_class_cast(content, [APJsonMessage class]);
        ImActorModelDroidkitJsonJSONObject *object = new_ImActorModelDroidkitJsonJSONObject_initWithNSString_([((APJsonMessage *) nil_chk(json)) getRawJson]);
        if ([((NSString *) nil_chk([object getStringWithNSString:@"dataType"])) isEqual:@"banner"]) {
          return new_AMBannerContent_initWithImActorModelEntityContentInternalContentRemoteContainer_(remoteContainer);
        }
      }
    }
    @catch (JavaLangException *e) {
      [((JavaLangException *) nil_chk(e)) printStackTrace];
    }
    return new_AMUnsupportedContent_initWithImActorModelEntityContentInternalContentRemoteContainer_(remoteContainer);
  }
  else {
    @throw new_JavaIoIOException_initWithNSString_(@"Unknown type");
  }
}

void AMAbsContent_initWithImActorModelEntityContentInternalContentRemoteContainer_(AMAbsContent *self, ImActorModelEntityContentInternalContentRemoteContainer *contentContainer) {
  (void) NSObject_init(self);
  self->contentContainer_ = contentContainer;
}

void AMAbsContent_initWithImActorModelEntityContentInternalContentLocalContainer_(AMAbsContent *self, ImActorModelEntityContentInternalContentLocalContainer *contentContainer) {
  (void) NSObject_init(self);
  self->contentContainer_ = contentContainer;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(AMAbsContent)