//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/actor-ios/build/java/org/bouncycastle/asn1/cms/CMSAttributes.java
//

#include "J2ObjC_source.h"
#include "org/bouncycastle/asn1/ASN1ObjectIdentifier.h"
#include "org/bouncycastle/asn1/cms/CMSAttributes.h"
#include "org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers.h"

BOOL OrgBouncycastleAsn1CmsCMSAttributes_initialized = NO;

OrgBouncycastleAsn1ASN1ObjectIdentifier * OrgBouncycastleAsn1CmsCMSAttributes_contentType_;
OrgBouncycastleAsn1ASN1ObjectIdentifier * OrgBouncycastleAsn1CmsCMSAttributes_messageDigest_;
OrgBouncycastleAsn1ASN1ObjectIdentifier * OrgBouncycastleAsn1CmsCMSAttributes_signingTime_;
OrgBouncycastleAsn1ASN1ObjectIdentifier * OrgBouncycastleAsn1CmsCMSAttributes_counterSignature_;
OrgBouncycastleAsn1ASN1ObjectIdentifier * OrgBouncycastleAsn1CmsCMSAttributes_contentHint_;

@implementation OrgBouncycastleAsn1CmsCMSAttributes

+ (void)initialize {
  if (self == [OrgBouncycastleAsn1CmsCMSAttributes class]) {
    OrgBouncycastleAsn1CmsCMSAttributes_contentType_ = OrgBouncycastleAsn1PkcsPKCSObjectIdentifiers_get_pkcs_9_at_contentType_();
    OrgBouncycastleAsn1CmsCMSAttributes_messageDigest_ = OrgBouncycastleAsn1PkcsPKCSObjectIdentifiers_get_pkcs_9_at_messageDigest_();
    OrgBouncycastleAsn1CmsCMSAttributes_signingTime_ = OrgBouncycastleAsn1PkcsPKCSObjectIdentifiers_get_pkcs_9_at_signingTime_();
    OrgBouncycastleAsn1CmsCMSAttributes_counterSignature_ = OrgBouncycastleAsn1PkcsPKCSObjectIdentifiers_get_pkcs_9_at_counterSignature_();
    OrgBouncycastleAsn1CmsCMSAttributes_contentHint_ = OrgBouncycastleAsn1PkcsPKCSObjectIdentifiers_get_id_aa_contentHint_();
    J2OBJC_SET_INITIALIZED(OrgBouncycastleAsn1CmsCMSAttributes)
  }
}

@end

J2OBJC_INTERFACE_TYPE_LITERAL_SOURCE(OrgBouncycastleAsn1CmsCMSAttributes)