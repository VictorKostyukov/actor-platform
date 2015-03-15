//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/actor-ios/build/java/org/bouncycastle/asn1/DERIA5String.java
//

#ifndef _OrgBouncycastleAsn1DERIA5String_H_
#define _OrgBouncycastleAsn1DERIA5String_H_

@class IOSByteArray;
@class OrgBouncycastleAsn1ASN1OutputStream;
@class OrgBouncycastleAsn1ASN1TaggedObject;

#include "J2ObjC_header.h"
#include "org/bouncycastle/asn1/ASN1Primitive.h"
#include "org/bouncycastle/asn1/ASN1String.h"

@interface OrgBouncycastleAsn1DERIA5String : OrgBouncycastleAsn1ASN1Primitive < OrgBouncycastleAsn1ASN1String > {
}

+ (OrgBouncycastleAsn1DERIA5String *)getInstanceWithId:(id)obj;

+ (OrgBouncycastleAsn1DERIA5String *)getInstanceWithOrgBouncycastleAsn1ASN1TaggedObject:(OrgBouncycastleAsn1ASN1TaggedObject *)obj
                                                                            withBoolean:(jboolean)explicit_;

- (instancetype)initWithByteArray:(IOSByteArray *)string;

- (instancetype)initWithNSString:(NSString *)string;

- (instancetype)initWithNSString:(NSString *)string
                     withBoolean:(jboolean)validate;

- (NSString *)getString;

- (NSString *)description;

- (IOSByteArray *)getOctets;

- (jboolean)isConstructed;

- (jint)encodedLength;

- (void)encodeWithOrgBouncycastleAsn1ASN1OutputStream:(OrgBouncycastleAsn1ASN1OutputStream *)outArg;

- (NSUInteger)hash;

- (jboolean)asn1EqualsWithOrgBouncycastleAsn1ASN1Primitive:(OrgBouncycastleAsn1ASN1Primitive *)o;

+ (jboolean)isIA5StringWithNSString:(NSString *)str;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgBouncycastleAsn1DERIA5String)

CF_EXTERN_C_BEGIN

FOUNDATION_EXPORT OrgBouncycastleAsn1DERIA5String *OrgBouncycastleAsn1DERIA5String_getInstanceWithId_(id obj);

FOUNDATION_EXPORT OrgBouncycastleAsn1DERIA5String *OrgBouncycastleAsn1DERIA5String_getInstanceWithOrgBouncycastleAsn1ASN1TaggedObject_withBoolean_(OrgBouncycastleAsn1ASN1TaggedObject *obj, jboolean explicit_);

FOUNDATION_EXPORT jboolean OrgBouncycastleAsn1DERIA5String_isIA5StringWithNSString_(NSString *str);
CF_EXTERN_C_END

J2OBJC_TYPE_LITERAL_HEADER(OrgBouncycastleAsn1DERIA5String)

#endif // _OrgBouncycastleAsn1DERIA5String_H_