//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-platform/actor-apps/core/src/main/java/im/actor/model/AuthState.java
//


#include "IOSClass.h"
#include "J2ObjC_source.h"
#include "im/actor/model/AuthState.h"
#include "java/lang/Enum.h"
#include "java/lang/IllegalArgumentException.h"

__attribute__((unused)) static void AMAuthStateEnum_initWithNSString_withInt_(AMAuthStateEnum *self, NSString *__name, jint __ordinal);

__attribute__((unused)) static AMAuthStateEnum *new_AMAuthStateEnum_initWithNSString_withInt_(NSString *__name, jint __ordinal) NS_RETURNS_RETAINED;

J2OBJC_INITIALIZED_DEFN(AMAuthStateEnum)

AMAuthStateEnum *AMAuthStateEnum_values_[7];

@implementation AMAuthStateEnum

- (instancetype)initWithNSString:(NSString *)__name
                         withInt:(jint)__ordinal {
  AMAuthStateEnum_initWithNSString_withInt_(self, __name, __ordinal);
  return self;
}

IOSObjectArray *AMAuthStateEnum_values() {
  AMAuthStateEnum_initialize();
  return [IOSObjectArray arrayWithObjects:AMAuthStateEnum_values_ count:7 type:AMAuthStateEnum_class_()];
}

+ (IOSObjectArray *)values {
  return AMAuthStateEnum_values();
}

+ (AMAuthStateEnum *)valueOfWithNSString:(NSString *)name {
  return AMAuthStateEnum_valueOfWithNSString_(name);
}

AMAuthStateEnum *AMAuthStateEnum_valueOfWithNSString_(NSString *name) {
  AMAuthStateEnum_initialize();
  for (int i = 0; i < 7; i++) {
    AMAuthStateEnum *e = AMAuthStateEnum_values_[i];
    if ([name isEqual:[e name]]) {
      return e;
    }
  }
  @throw [[JavaLangIllegalArgumentException alloc] initWithNSString:name];
  return nil;
}

- (id)copyWithZone:(NSZone *)zone {
  return self;
}

+ (void)initialize {
  if (self == [AMAuthStateEnum class]) {
    AMAuthStateEnum_AUTH_START = new_AMAuthStateEnum_initWithNSString_withInt_(@"AUTH_START", 0);
    AMAuthStateEnum_CODE_VALIDATION_PHONE = new_AMAuthStateEnum_initWithNSString_withInt_(@"CODE_VALIDATION_PHONE", 1);
    AMAuthStateEnum_CODE_VALIDATION_EMAIL = new_AMAuthStateEnum_initWithNSString_withInt_(@"CODE_VALIDATION_EMAIL", 2);
    AMAuthStateEnum_GET_OAUTH_PARAMS = new_AMAuthStateEnum_initWithNSString_withInt_(@"GET_OAUTH_PARAMS", 3);
    AMAuthStateEnum_COMPLETE_OAUTH = new_AMAuthStateEnum_initWithNSString_withInt_(@"COMPLETE_OAUTH", 4);
    AMAuthStateEnum_SIGN_UP = new_AMAuthStateEnum_initWithNSString_withInt_(@"SIGN_UP", 5);
    AMAuthStateEnum_LOGGED_IN = new_AMAuthStateEnum_initWithNSString_withInt_(@"LOGGED_IN", 6);
    J2OBJC_SET_INITIALIZED(AMAuthStateEnum)
  }
}

@end

void AMAuthStateEnum_initWithNSString_withInt_(AMAuthStateEnum *self, NSString *__name, jint __ordinal) {
  (void) JavaLangEnum_initWithNSString_withInt_(self, __name, __ordinal);
}

AMAuthStateEnum *new_AMAuthStateEnum_initWithNSString_withInt_(NSString *__name, jint __ordinal) {
  AMAuthStateEnum *self = [AMAuthStateEnum alloc];
  AMAuthStateEnum_initWithNSString_withInt_(self, __name, __ordinal);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(AMAuthStateEnum)
