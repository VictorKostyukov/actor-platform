//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/library/actor-cocoa-base/build/java/im/actor/model/api/rpc/RequestEditAvatar.java
//


#line 1 "/Users/ex3ndr/Develop/actor-model/library/actor-cocoa-base/build/java/im/actor/model/api/rpc/RequestEditAvatar.java"

#include "IOSClass.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "im/actor/model/api/FileLocation.h"
#include "im/actor/model/api/rpc/RequestEditAvatar.h"
#include "im/actor/model/droidkit/bser/Bser.h"
#include "im/actor/model/droidkit/bser/BserObject.h"
#include "im/actor/model/droidkit/bser/BserValues.h"
#include "im/actor/model/droidkit/bser/BserWriter.h"
#include "im/actor/model/network/parser/Request.h"
#include "java/io/IOException.h"

@interface ImActorModelApiRpcRequestEditAvatar () {
 @public
  ImActorModelApiFileLocation *fileLocation_;
}

@end

J2OBJC_FIELD_SETTER(ImActorModelApiRpcRequestEditAvatar, fileLocation_, ImActorModelApiFileLocation *)


#line 24
@implementation ImActorModelApiRpcRequestEditAvatar


#line 27
+ (ImActorModelApiRpcRequestEditAvatar *)fromBytesWithByteArray:(IOSByteArray *)data {
  return ImActorModelApiRpcRequestEditAvatar_fromBytesWithByteArray_(data);
}


#line 33
- (instancetype)initWithImActorModelApiFileLocation:(ImActorModelApiFileLocation *)fileLocation {
  ImActorModelApiRpcRequestEditAvatar_initWithImActorModelApiFileLocation_(self, fileLocation);
  return self;
}


#line 37
- (instancetype)init {
  ImActorModelApiRpcRequestEditAvatar_init(self);
  return self;
}


#line 41
- (ImActorModelApiFileLocation *)getFileLocation {
  return self->fileLocation_;
}


#line 46
- (void)parseWithBSBserValues:(BSBserValues *)values {
  self->fileLocation_ = [((BSBserValues *) nil_chk(values)) getObjWithInt:1 withBSBserObject:new_ImActorModelApiFileLocation_init()];
}


#line 51
- (void)serializeWithBSBserWriter:(BSBserWriter *)writer {
  if (self->fileLocation_ == nil) {
    @throw new_JavaIoIOException_init();
  }
  [((BSBserWriter *) nil_chk(writer)) writeObjectWithInt:1 withBSBserObject:self->fileLocation_];
}


#line 59
- (NSString *)description {
  NSString *res = @"rpc EditAvatar{";
  res = JreStrcat("$$", res, JreStrcat("$$", @"fileLocation=", (self->fileLocation_ != nil ? @"set" : @"empty")));
  res = JreStrcat("$C", res, '}');
  return res;
}


#line 67
- (jint)getHeaderKey {
  return ImActorModelApiRpcRequestEditAvatar_HEADER;
}

@end


#line 27
ImActorModelApiRpcRequestEditAvatar *ImActorModelApiRpcRequestEditAvatar_fromBytesWithByteArray_(IOSByteArray *data) {
  ImActorModelApiRpcRequestEditAvatar_initialize();
  
#line 28
  return ((ImActorModelApiRpcRequestEditAvatar *) BSBser_parseWithBSBserObject_withByteArray_(new_ImActorModelApiRpcRequestEditAvatar_init(), data));
}


#line 33
void ImActorModelApiRpcRequestEditAvatar_initWithImActorModelApiFileLocation_(ImActorModelApiRpcRequestEditAvatar *self, ImActorModelApiFileLocation *fileLocation) {
  (void) ImActorModelNetworkParserRequest_init(self);
  
#line 34
  self->fileLocation_ = fileLocation;
}


#line 33
ImActorModelApiRpcRequestEditAvatar *new_ImActorModelApiRpcRequestEditAvatar_initWithImActorModelApiFileLocation_(ImActorModelApiFileLocation *fileLocation) {
  ImActorModelApiRpcRequestEditAvatar *self = [ImActorModelApiRpcRequestEditAvatar alloc];
  ImActorModelApiRpcRequestEditAvatar_initWithImActorModelApiFileLocation_(self, fileLocation);
  return self;
}


#line 37
void ImActorModelApiRpcRequestEditAvatar_init(ImActorModelApiRpcRequestEditAvatar *self) {
  (void) ImActorModelNetworkParserRequest_init(self);
}


#line 37
ImActorModelApiRpcRequestEditAvatar *new_ImActorModelApiRpcRequestEditAvatar_init() {
  ImActorModelApiRpcRequestEditAvatar *self = [ImActorModelApiRpcRequestEditAvatar alloc];
  ImActorModelApiRpcRequestEditAvatar_init(self);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ImActorModelApiRpcRequestEditAvatar)