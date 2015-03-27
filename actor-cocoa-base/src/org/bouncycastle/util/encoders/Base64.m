//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/actor-ios/build/java/org/bouncycastle/util/encoders/Base64.java
//

#include "IOSClass.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "java/io/ByteArrayOutputStream.h"
#include "java/io/IOException.h"
#include "java/io/OutputStream.h"
#include "java/lang/Exception.h"
#include "org/bouncycastle/util/Strings.h"
#include "org/bouncycastle/util/encoders/Base64.h"
#include "org/bouncycastle/util/encoders/Base64Encoder.h"
#include "org/bouncycastle/util/encoders/DecoderException.h"
#include "org/bouncycastle/util/encoders/Encoder.h"
#include "org/bouncycastle/util/encoders/EncoderException.h"

@interface OrgBouncycastleUtilEncodersBase64 () {
}
@end

BOOL OrgBouncycastleUtilEncodersBase64_initialized = NO;

@implementation OrgBouncycastleUtilEncodersBase64

id<OrgBouncycastleUtilEncodersEncoder> OrgBouncycastleUtilEncodersBase64_encoder_;

+ (NSString *)toBase64StringWithByteArray:(IOSByteArray *)data {
  return OrgBouncycastleUtilEncodersBase64_toBase64StringWithByteArray_(data);
}

+ (NSString *)toBase64StringWithByteArray:(IOSByteArray *)data
                                  withInt:(jint)off
                                  withInt:(jint)length {
  return OrgBouncycastleUtilEncodersBase64_toBase64StringWithByteArray_withInt_withInt_(data, off, length);
}

+ (IOSByteArray *)encodeWithByteArray:(IOSByteArray *)data {
  return OrgBouncycastleUtilEncodersBase64_encodeWithByteArray_(data);
}

+ (IOSByteArray *)encodeWithByteArray:(IOSByteArray *)data
                              withInt:(jint)off
                              withInt:(jint)length {
  return OrgBouncycastleUtilEncodersBase64_encodeWithByteArray_withInt_withInt_(data, off, length);
}

+ (jint)encodeWithByteArray:(IOSByteArray *)data
     withJavaIoOutputStream:(JavaIoOutputStream *)outArg {
  return OrgBouncycastleUtilEncodersBase64_encodeWithByteArray_withJavaIoOutputStream_(data, outArg);
}

+ (jint)encodeWithByteArray:(IOSByteArray *)data
                    withInt:(jint)off
                    withInt:(jint)length
     withJavaIoOutputStream:(JavaIoOutputStream *)outArg {
  return OrgBouncycastleUtilEncodersBase64_encodeWithByteArray_withInt_withInt_withJavaIoOutputStream_(data, off, length, outArg);
}

+ (IOSByteArray *)decodeWithByteArray:(IOSByteArray *)data {
  return OrgBouncycastleUtilEncodersBase64_decodeWithByteArray_(data);
}

+ (IOSByteArray *)decodeWithNSString:(NSString *)data {
  return OrgBouncycastleUtilEncodersBase64_decodeWithNSString_(data);
}

+ (jint)decodeWithNSString:(NSString *)data
    withJavaIoOutputStream:(JavaIoOutputStream *)outArg {
  return OrgBouncycastleUtilEncodersBase64_decodeWithNSString_withJavaIoOutputStream_(data, outArg);
}

- (instancetype)init {
  return [super init];
}

+ (void)initialize {
  if (self == [OrgBouncycastleUtilEncodersBase64 class]) {
    OrgBouncycastleUtilEncodersBase64_encoder_ = [[OrgBouncycastleUtilEncodersBase64Encoder alloc] init];
    J2OBJC_SET_INITIALIZED(OrgBouncycastleUtilEncodersBase64)
  }
}

@end

NSString *OrgBouncycastleUtilEncodersBase64_toBase64StringWithByteArray_(IOSByteArray *data) {
  OrgBouncycastleUtilEncodersBase64_init();
  return OrgBouncycastleUtilEncodersBase64_toBase64StringWithByteArray_withInt_withInt_(data, 0, ((IOSByteArray *) nil_chk(data))->size_);
}

NSString *OrgBouncycastleUtilEncodersBase64_toBase64StringWithByteArray_withInt_withInt_(IOSByteArray *data, jint off, jint length) {
  OrgBouncycastleUtilEncodersBase64_init();
  IOSByteArray *encoded = OrgBouncycastleUtilEncodersBase64_encodeWithByteArray_withInt_withInt_(data, off, length);
  return OrgBouncycastleUtilStrings_fromByteArrayWithByteArray_(encoded);
}

IOSByteArray *OrgBouncycastleUtilEncodersBase64_encodeWithByteArray_(IOSByteArray *data) {
  OrgBouncycastleUtilEncodersBase64_init();
  return OrgBouncycastleUtilEncodersBase64_encodeWithByteArray_withInt_withInt_(data, 0, ((IOSByteArray *) nil_chk(data))->size_);
}

IOSByteArray *OrgBouncycastleUtilEncodersBase64_encodeWithByteArray_withInt_withInt_(IOSByteArray *data, jint off, jint length) {
  OrgBouncycastleUtilEncodersBase64_init();
  jint len = (length + 2) / 3 * 4;
  JavaIoByteArrayOutputStream *bOut = [[JavaIoByteArrayOutputStream alloc] initWithInt:len];
  @try {
    [((id<OrgBouncycastleUtilEncodersEncoder>) nil_chk(OrgBouncycastleUtilEncodersBase64_encoder_)) encodeWithByteArray:data withInt:off withInt:length withJavaIoOutputStream:bOut];
  }
  @catch (JavaLangException *e) {
    @throw [[OrgBouncycastleUtilEncodersEncoderException alloc] initWithNSString:JreStrcat("$$", @"exception encoding base64 string: ", [((JavaLangException *) nil_chk(e)) getMessage]) withJavaLangThrowable:e];
  }
  return [bOut toByteArray];
}

jint OrgBouncycastleUtilEncodersBase64_encodeWithByteArray_withJavaIoOutputStream_(IOSByteArray *data, JavaIoOutputStream *outArg) {
  OrgBouncycastleUtilEncodersBase64_init();
  return [((id<OrgBouncycastleUtilEncodersEncoder>) nil_chk(OrgBouncycastleUtilEncodersBase64_encoder_)) encodeWithByteArray:data withInt:0 withInt:((IOSByteArray *) nil_chk(data))->size_ withJavaIoOutputStream:outArg];
}

jint OrgBouncycastleUtilEncodersBase64_encodeWithByteArray_withInt_withInt_withJavaIoOutputStream_(IOSByteArray *data, jint off, jint length, JavaIoOutputStream *outArg) {
  OrgBouncycastleUtilEncodersBase64_init();
  return [((id<OrgBouncycastleUtilEncodersEncoder>) nil_chk(OrgBouncycastleUtilEncodersBase64_encoder_)) encodeWithByteArray:data withInt:off withInt:length withJavaIoOutputStream:outArg];
}

IOSByteArray *OrgBouncycastleUtilEncodersBase64_decodeWithByteArray_(IOSByteArray *data) {
  OrgBouncycastleUtilEncodersBase64_init();
  jint len = ((IOSByteArray *) nil_chk(data))->size_ / 4 * 3;
  JavaIoByteArrayOutputStream *bOut = [[JavaIoByteArrayOutputStream alloc] initWithInt:len];
  @try {
    [((id<OrgBouncycastleUtilEncodersEncoder>) nil_chk(OrgBouncycastleUtilEncodersBase64_encoder_)) decodeWithByteArray:data withInt:0 withInt:data->size_ withJavaIoOutputStream:bOut];
  }
  @catch (JavaLangException *e) {
    @throw [[OrgBouncycastleUtilEncodersDecoderException alloc] initWithNSString:JreStrcat("$$", @"unable to decode base64 data: ", [((JavaLangException *) nil_chk(e)) getMessage]) withJavaLangThrowable:e];
  }
  return [bOut toByteArray];
}

IOSByteArray *OrgBouncycastleUtilEncodersBase64_decodeWithNSString_(NSString *data) {
  OrgBouncycastleUtilEncodersBase64_init();
  jint len = ((jint) [((NSString *) nil_chk(data)) length]) / 4 * 3;
  JavaIoByteArrayOutputStream *bOut = [[JavaIoByteArrayOutputStream alloc] initWithInt:len];
  @try {
    [((id<OrgBouncycastleUtilEncodersEncoder>) nil_chk(OrgBouncycastleUtilEncodersBase64_encoder_)) decodeWithNSString:data withJavaIoOutputStream:bOut];
  }
  @catch (JavaLangException *e) {
    @throw [[OrgBouncycastleUtilEncodersDecoderException alloc] initWithNSString:JreStrcat("$$", @"unable to decode base64 string: ", [((JavaLangException *) nil_chk(e)) getMessage]) withJavaLangThrowable:e];
  }
  return [bOut toByteArray];
}

jint OrgBouncycastleUtilEncodersBase64_decodeWithNSString_withJavaIoOutputStream_(NSString *data, JavaIoOutputStream *outArg) {
  OrgBouncycastleUtilEncodersBase64_init();
  return [((id<OrgBouncycastleUtilEncodersEncoder>) nil_chk(OrgBouncycastleUtilEncodersBase64_encoder_)) decodeWithNSString:data withJavaIoOutputStream:outArg];
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgBouncycastleUtilEncodersBase64)