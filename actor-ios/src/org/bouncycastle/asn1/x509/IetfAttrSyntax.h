//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/actor-ios/build/java/org/bouncycastle/asn1/x509/IetfAttrSyntax.java
//

#ifndef _OrgBouncycastleAsn1X509IetfAttrSyntax_H_
#define _OrgBouncycastleAsn1X509IetfAttrSyntax_H_

@class IOSObjectArray;
@class JavaUtilVector;
@class OrgBouncycastleAsn1ASN1Primitive;
@class OrgBouncycastleAsn1ASN1Sequence;
@class OrgBouncycastleAsn1X509GeneralNames;

#include "J2ObjC_header.h"
#include "org/bouncycastle/asn1/ASN1Object.h"

#define OrgBouncycastleAsn1X509IetfAttrSyntax_VALUE_OCTETS 1
#define OrgBouncycastleAsn1X509IetfAttrSyntax_VALUE_OID 2
#define OrgBouncycastleAsn1X509IetfAttrSyntax_VALUE_UTF8 3

@interface OrgBouncycastleAsn1X509IetfAttrSyntax : OrgBouncycastleAsn1ASN1Object {
 @public
  OrgBouncycastleAsn1X509GeneralNames *policyAuthority_;
  JavaUtilVector *values_;
  jint valueChoice_;
}

+ (OrgBouncycastleAsn1X509IetfAttrSyntax *)getInstanceWithId:(id)obj;

- (OrgBouncycastleAsn1X509GeneralNames *)getPolicyAuthority;

- (jint)getValueType;

- (IOSObjectArray *)getValues;

- (OrgBouncycastleAsn1ASN1Primitive *)toASN1Primitive;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgBouncycastleAsn1X509IetfAttrSyntax)

J2OBJC_FIELD_SETTER(OrgBouncycastleAsn1X509IetfAttrSyntax, policyAuthority_, OrgBouncycastleAsn1X509GeneralNames *)
J2OBJC_FIELD_SETTER(OrgBouncycastleAsn1X509IetfAttrSyntax, values_, JavaUtilVector *)

CF_EXTERN_C_BEGIN

FOUNDATION_EXPORT OrgBouncycastleAsn1X509IetfAttrSyntax *OrgBouncycastleAsn1X509IetfAttrSyntax_getInstanceWithId_(id obj);

J2OBJC_STATIC_FIELD_GETTER(OrgBouncycastleAsn1X509IetfAttrSyntax, VALUE_OCTETS, jint)

J2OBJC_STATIC_FIELD_GETTER(OrgBouncycastleAsn1X509IetfAttrSyntax, VALUE_OID, jint)

J2OBJC_STATIC_FIELD_GETTER(OrgBouncycastleAsn1X509IetfAttrSyntax, VALUE_UTF8, jint)
CF_EXTERN_C_END

J2OBJC_TYPE_LITERAL_HEADER(OrgBouncycastleAsn1X509IetfAttrSyntax)

#endif // _OrgBouncycastleAsn1X509IetfAttrSyntax_H_