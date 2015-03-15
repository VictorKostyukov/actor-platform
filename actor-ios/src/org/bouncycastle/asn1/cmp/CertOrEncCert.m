//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/actor-ios/build/java/org/bouncycastle/asn1/cmp/CertOrEncCert.java
//

#include "J2ObjC_source.h"
#include "java/lang/IllegalArgumentException.h"
#include "org/bouncycastle/asn1/ASN1Primitive.h"
#include "org/bouncycastle/asn1/ASN1TaggedObject.h"
#include "org/bouncycastle/asn1/DERTaggedObject.h"
#include "org/bouncycastle/asn1/cmp/CMPCertificate.h"
#include "org/bouncycastle/asn1/cmp/CertOrEncCert.h"
#include "org/bouncycastle/asn1/crmf/EncryptedValue.h"

@interface OrgBouncycastleAsn1CmpCertOrEncCert () {
 @public
  OrgBouncycastleAsn1CmpCMPCertificate *certificate_;
  OrgBouncycastleAsn1CrmfEncryptedValue *encryptedCert_;
}
- (instancetype)initWithOrgBouncycastleAsn1ASN1TaggedObject:(OrgBouncycastleAsn1ASN1TaggedObject *)tagged;
@end

J2OBJC_FIELD_SETTER(OrgBouncycastleAsn1CmpCertOrEncCert, certificate_, OrgBouncycastleAsn1CmpCMPCertificate *)
J2OBJC_FIELD_SETTER(OrgBouncycastleAsn1CmpCertOrEncCert, encryptedCert_, OrgBouncycastleAsn1CrmfEncryptedValue *)

@implementation OrgBouncycastleAsn1CmpCertOrEncCert

- (instancetype)initWithOrgBouncycastleAsn1ASN1TaggedObject:(OrgBouncycastleAsn1ASN1TaggedObject *)tagged {
  if (self = [super init]) {
    if ([((OrgBouncycastleAsn1ASN1TaggedObject *) nil_chk(tagged)) getTagNo] == 0) {
      certificate_ = OrgBouncycastleAsn1CmpCMPCertificate_getInstanceWithId_([tagged getObject]);
    }
    else if ([tagged getTagNo] == 1) {
      encryptedCert_ = OrgBouncycastleAsn1CrmfEncryptedValue_getInstanceWithId_([tagged getObject]);
    }
    else {
      @throw [[JavaLangIllegalArgumentException alloc] initWithNSString:JreStrcat("$I", @"unknown tag: ", [tagged getTagNo])];
    }
  }
  return self;
}

+ (OrgBouncycastleAsn1CmpCertOrEncCert *)getInstanceWithId:(id)o {
  return OrgBouncycastleAsn1CmpCertOrEncCert_getInstanceWithId_(o);
}

- (instancetype)initWithOrgBouncycastleAsn1CmpCMPCertificate:(OrgBouncycastleAsn1CmpCMPCertificate *)certificate {
  if (self = [super init]) {
    if (certificate == nil) {
      @throw [[JavaLangIllegalArgumentException alloc] initWithNSString:@"'certificate' cannot be null"];
    }
    self->certificate_ = certificate;
  }
  return self;
}

- (instancetype)initWithOrgBouncycastleAsn1CrmfEncryptedValue:(OrgBouncycastleAsn1CrmfEncryptedValue *)encryptedCert {
  if (self = [super init]) {
    if (encryptedCert == nil) {
      @throw [[JavaLangIllegalArgumentException alloc] initWithNSString:@"'encryptedCert' cannot be null"];
    }
    self->encryptedCert_ = encryptedCert;
  }
  return self;
}

- (OrgBouncycastleAsn1CmpCMPCertificate *)getCertificate {
  return certificate_;
}

- (OrgBouncycastleAsn1CrmfEncryptedValue *)getEncryptedCert {
  return encryptedCert_;
}

- (OrgBouncycastleAsn1ASN1Primitive *)toASN1Primitive {
  if (certificate_ != nil) {
    return [[OrgBouncycastleAsn1DERTaggedObject alloc] initWithBoolean:YES withInt:0 withOrgBouncycastleAsn1ASN1Encodable:certificate_];
  }
  return [[OrgBouncycastleAsn1DERTaggedObject alloc] initWithBoolean:YES withInt:1 withOrgBouncycastleAsn1ASN1Encodable:encryptedCert_];
}

- (void)copyAllFieldsTo:(OrgBouncycastleAsn1CmpCertOrEncCert *)other {
  [super copyAllFieldsTo:other];
  other->certificate_ = certificate_;
  other->encryptedCert_ = encryptedCert_;
}

@end

OrgBouncycastleAsn1CmpCertOrEncCert *OrgBouncycastleAsn1CmpCertOrEncCert_getInstanceWithId_(id o) {
  OrgBouncycastleAsn1CmpCertOrEncCert_init();
  if ([o isKindOfClass:[OrgBouncycastleAsn1CmpCertOrEncCert class]]) {
    return (OrgBouncycastleAsn1CmpCertOrEncCert *) check_class_cast(o, [OrgBouncycastleAsn1CmpCertOrEncCert class]);
  }
  if ([o isKindOfClass:[OrgBouncycastleAsn1ASN1TaggedObject class]]) {
    return [[OrgBouncycastleAsn1CmpCertOrEncCert alloc] initWithOrgBouncycastleAsn1ASN1TaggedObject:(OrgBouncycastleAsn1ASN1TaggedObject *) check_class_cast(o, [OrgBouncycastleAsn1ASN1TaggedObject class])];
  }
  return nil;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgBouncycastleAsn1CmpCertOrEncCert)