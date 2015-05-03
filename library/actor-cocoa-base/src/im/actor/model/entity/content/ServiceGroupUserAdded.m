//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/library/actor-cocoa-base/build/java/im/actor/model/entity/content/ServiceGroupUserAdded.java
//


#line 1 "/Users/ex3ndr/Develop/actor-model/library/actor-cocoa-base/build/java/im/actor/model/entity/content/ServiceGroupUserAdded.java"

#include "IOSClass.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "im/actor/model/droidkit/bser/Bser.h"
#include "im/actor/model/droidkit/bser/BserObject.h"
#include "im/actor/model/droidkit/bser/BserValues.h"
#include "im/actor/model/droidkit/bser/BserWriter.h"
#include "im/actor/model/entity/content/AbsContent.h"
#include "im/actor/model/entity/content/ServiceContent.h"
#include "im/actor/model/entity/content/ServiceGroupUserAdded.h"
#include "java/io/IOException.h"

@interface AMServiceGroupUserAdded () {
 @public
  jint addedUid_;
}

- (instancetype)init;

@end

__attribute__((unused)) static void AMServiceGroupUserAdded_init(AMServiceGroupUserAdded *self);

__attribute__((unused)) static AMServiceGroupUserAdded *new_AMServiceGroupUserAdded_init() NS_RETURNS_RETAINED;


#line 12
@implementation AMServiceGroupUserAdded

+ (AMServiceGroupUserAdded *)fromBytesWithByteArray:(IOSByteArray *)data {
  return AMServiceGroupUserAdded_fromBytesWithByteArray_(data);
}


#line 20
- (instancetype)initWithInt:(jint)addedUid {
  AMServiceGroupUserAdded_initWithInt_(self, addedUid);
  return self;
}

- (instancetype)init {
  AMServiceGroupUserAdded_init(self);
  return self;
}


#line 29
- (jint)getAddedUid {
  return addedUid_;
}


#line 34
- (AMAbsContent_ContentTypeEnum *)getContentType {
  return AMAbsContent_ContentTypeEnum_get_SERVICE_ADDED();
}


#line 39
- (void)parseWithBSBserValues:(BSBserValues *)values {
  [super parseWithBSBserValues:values];
  addedUid_ = [((BSBserValues *) nil_chk(values)) getIntWithInt:10];
}


#line 46
- (void)serializeWithBSBserWriter:(BSBserWriter *)writer {
  [super serializeWithBSBserWriter:writer];
  [((BSBserWriter *) nil_chk(writer)) writeIntWithInt:10 withInt:addedUid_];
}

@end


#line 14
AMServiceGroupUserAdded *AMServiceGroupUserAdded_fromBytesWithByteArray_(IOSByteArray *data) {
  AMServiceGroupUserAdded_initialize();
  
#line 15
  return ((AMServiceGroupUserAdded *) BSBser_parseWithBSBserObject_withByteArray_(new_AMServiceGroupUserAdded_init(), data));
}


#line 20
void AMServiceGroupUserAdded_initWithInt_(AMServiceGroupUserAdded *self, jint addedUid) {
  (void) AMServiceContent_initWithNSString_(self, @"Member added");
  self->addedUid_ = addedUid;
}


#line 20
AMServiceGroupUserAdded *new_AMServiceGroupUserAdded_initWithInt_(jint addedUid) {
  AMServiceGroupUserAdded *self = [AMServiceGroupUserAdded alloc];
  AMServiceGroupUserAdded_initWithInt_(self, addedUid);
  return self;
}


#line 25
void AMServiceGroupUserAdded_init(AMServiceGroupUserAdded *self) {
  (void) AMServiceContent_init(self);
}


#line 25
AMServiceGroupUserAdded *new_AMServiceGroupUserAdded_init() {
  AMServiceGroupUserAdded *self = [AMServiceGroupUserAdded alloc];
  AMServiceGroupUserAdded_init(self);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(AMServiceGroupUserAdded)