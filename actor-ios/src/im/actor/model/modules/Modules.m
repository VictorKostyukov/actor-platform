//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/actor-ios/build/java/im/actor/model/modules/Modules.java
//

#include "IOSObjectArray.h"
#include "J2ObjC_source.h"
#include "im/actor/model/Configuration.h"
#include "im/actor/model/LocaleProvider.h"
#include "im/actor/model/Networking.h"
#include "im/actor/model/Storage.h"
#include "im/actor/model/i18n/I18nEngine.h"
#include "im/actor/model/modules/Auth.h"
#include "im/actor/model/modules/FilesModule.h"
#include "im/actor/model/modules/Groups.h"
#include "im/actor/model/modules/Messages.h"
#include "im/actor/model/modules/Modules.h"
#include "im/actor/model/modules/Presence.h"
#include "im/actor/model/modules/Typing.h"
#include "im/actor/model/modules/Updates.h"
#include "im/actor/model/modules/Users.h"
#include "im/actor/model/modules/utils/PreferenceApiStorage.h"
#include "im/actor/model/network/ActorApi.h"
#include "im/actor/model/network/Endpoints.h"
#include "im/actor/model/storage/PreferencesStorage.h"

@interface ImActorModelModulesModules () {
 @public
  AMConfiguration *configuration_;
  ImActorModelI18nI18nEngine *i18nEngine_;
  AMActorApi *actorApi_;
  ImActorModelModulesAuth *auth_;
  id<AMPreferencesStorage> preferences_;
  ImActorModelModulesUsers *users_;
  ImActorModelModulesGroups *groups_;
  ImActorModelModulesUpdates *updates_;
  ImActorModelModulesMessages *messages_;
  ImActorModelModulesPresence *presence_;
  ImActorModelModulesTyping *typing_;
  ImActorModelModulesFilesModule *filesModule_;
}
@end

J2OBJC_FIELD_SETTER(ImActorModelModulesModules, configuration_, AMConfiguration *)
J2OBJC_FIELD_SETTER(ImActorModelModulesModules, i18nEngine_, ImActorModelI18nI18nEngine *)
J2OBJC_FIELD_SETTER(ImActorModelModulesModules, actorApi_, AMActorApi *)
J2OBJC_FIELD_SETTER(ImActorModelModulesModules, auth_, ImActorModelModulesAuth *)
J2OBJC_FIELD_SETTER(ImActorModelModulesModules, preferences_, id<AMPreferencesStorage>)
J2OBJC_FIELD_SETTER(ImActorModelModulesModules, users_, ImActorModelModulesUsers *)
J2OBJC_FIELD_SETTER(ImActorModelModulesModules, groups_, ImActorModelModulesGroups *)
J2OBJC_FIELD_SETTER(ImActorModelModulesModules, updates_, ImActorModelModulesUpdates *)
J2OBJC_FIELD_SETTER(ImActorModelModulesModules, messages_, ImActorModelModulesMessages *)
J2OBJC_FIELD_SETTER(ImActorModelModulesModules, presence_, ImActorModelModulesPresence *)
J2OBJC_FIELD_SETTER(ImActorModelModulesModules, typing_, ImActorModelModulesTyping *)
J2OBJC_FIELD_SETTER(ImActorModelModulesModules, filesModule_, ImActorModelModulesFilesModule *)

@interface ImActorModelModulesModules_$1 () {
 @public
  ImActorModelModulesModules *this$0_;
}
@end

J2OBJC_FIELD_SETTER(ImActorModelModulesModules_$1, this$0_, ImActorModelModulesModules *)

@implementation ImActorModelModulesModules

- (instancetype)initWithAMConfiguration:(AMConfiguration *)configuration {
  if (self = [super init]) {
    self->configuration_ = configuration;
    self->i18nEngine_ = [[ImActorModelI18nI18nEngine alloc] initWithAMLocaleProvider:[((AMConfiguration *) nil_chk(configuration)) getLocaleProvider]];
    self->preferences_ = [((id<AMStorage>) nil_chk([configuration getStorage])) createPreferencesStorage];
    self->actorApi_ = [[AMActorApi alloc] initWithAMEndpoints:[[AMEndpoints alloc] initWithAMConnectionEndpointArray:[configuration getEndpoints]] withAMAuthKeyStorage:[[ImActorModelModulesUtilsPreferenceApiStorage alloc] initWithAMPreferencesStorage:preferences_] withAMActorApiCallback:[[ImActorModelModulesModules_$1 alloc] initWithImActorModelModulesModules:self] withAMNetworking:[configuration getNetworking]];
    self->auth_ = [[ImActorModelModulesAuth alloc] initWithImActorModelModulesModules:self];
  }
  return self;
}

- (void)run {
  [((ImActorModelModulesAuth *) nil_chk(self->auth_)) run];
}

- (void)onLoggedIn {
  users_ = [[ImActorModelModulesUsers alloc] initWithImActorModelModulesModules:self];
  groups_ = [[ImActorModelModulesGroups alloc] initWithImActorModelModulesModules:self];
  messages_ = [[ImActorModelModulesMessages alloc] initWithImActorModelModulesModules:self];
  updates_ = [[ImActorModelModulesUpdates alloc] initWithImActorModelModulesModules:self];
  presence_ = [[ImActorModelModulesPresence alloc] initWithImActorModelModulesModules:self];
  typing_ = [[ImActorModelModulesTyping alloc] initWithImActorModelModulesModules:self];
  filesModule_ = [[ImActorModelModulesFilesModule alloc] initWithImActorModelModulesModules:self];
  [messages_ run];
  [updates_ run];
  [presence_ run];
}

- (id<AMPreferencesStorage>)getPreferences {
  return preferences_;
}

- (AMConfiguration *)getConfiguration {
  return configuration_;
}

- (ImActorModelModulesAuth *)getAuthModule {
  return auth_;
}

- (ImActorModelModulesUsers *)getUsersModule {
  return users_;
}

- (ImActorModelModulesGroups *)getGroupsModule {
  return groups_;
}

- (ImActorModelModulesMessages *)getMessagesModule {
  return messages_;
}

- (ImActorModelModulesUpdates *)getUpdatesModule {
  return updates_;
}

- (ImActorModelModulesTyping *)getTypingModule {
  return typing_;
}

- (ImActorModelModulesPresence *)getPresenceModule {
  return presence_;
}

- (AMActorApi *)getActorApi {
  return actorApi_;
}

- (ImActorModelI18nI18nEngine *)getI18nEngine {
  return i18nEngine_;
}

- (void)copyAllFieldsTo:(ImActorModelModulesModules *)other {
  [super copyAllFieldsTo:other];
  other->configuration_ = configuration_;
  other->i18nEngine_ = i18nEngine_;
  other->actorApi_ = actorApi_;
  other->auth_ = auth_;
  other->preferences_ = preferences_;
  other->users_ = users_;
  other->groups_ = groups_;
  other->updates_ = updates_;
  other->messages_ = messages_;
  other->presence_ = presence_;
  other->typing_ = typing_;
  other->filesModule_ = filesModule_;
}

@end

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ImActorModelModulesModules)

@implementation ImActorModelModulesModules_$1

- (void)onAuthIdInvalidatedWithLong:(jlong)authKey {
}

- (void)onNewSessionCreated {
  if (this$0_->updates_ != nil) {
    [this$0_->updates_ onNewSessionCreated];
  }
  if (this$0_->presence_ != nil) {
    [this$0_->presence_ onNewSessionCreated];
  }
}

- (void)onUpdateReceivedWithId:(id)obj {
  if (this$0_->updates_ != nil) {
    [this$0_->updates_ onUpdateReceivedWithId:obj];
  }
}

- (instancetype)initWithImActorModelModulesModules:(ImActorModelModulesModules *)outer$ {
  this$0_ = outer$;
  return [super init];
}

- (void)copyAllFieldsTo:(ImActorModelModulesModules_$1 *)other {
  [super copyAllFieldsTo:other];
  other->this$0_ = this$0_;
}

@end

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ImActorModelModulesModules_$1)