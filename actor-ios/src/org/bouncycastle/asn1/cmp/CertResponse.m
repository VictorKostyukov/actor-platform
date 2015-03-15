//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/actor-ios/build/java/org/bouncycastle/asn1/cmp/CertResponse.java
//

#include "J2ObjC_source.h"
#include "java/lang/IllegalArgumentException.h"
#include "org/bouncycastle/asn1/ASN1Encodable.h"
#include "org/bouncycastle/asn1/ASN1EncodableVector.h"
#include "org/bouncycastle/asn1/ASN1Integer.h"
#include "org/bouncycastle/asn1/ASN1OctetString.h"
#include "org/bouncycastle/asn1/ASN1Primitive.h"
#include "org/bouncycastle/asn1/ASN1Sequence.h"
#include "org/bouncycastle/asn1/DERSequence.h"
#include "org/bouncycastle/asn1/cmp/CertResponse.h"
#include "org/bouncycastle/asn1/cmp/CertifiedKeyPair.h"
#include "org/bouncycastle/asn1/cmp/PKIStatusInfo.h"

@interface OrgBouncycastleAsn1CmpCertResponse () {
 @public
  OrgBouncycastleAsn1ASN1Integer *certReqId_;
  OrgBouncycastleAsn1CmpPKIStatusInfo *status_;
  OrgBouncycastleAsn1CmpCertifiedKeyPair *certifiedKeyPair_;
  OrgBouncycastleAsn1ASN1OctetString *rspInfo_;
}
- (instancetype)initWithOrgBouncycastleAsn1ASN1Sequence:(OrgBouncycastleAsn1ASN1Sequence *)seq;
@end

J2OBJC_FIELD_SETTER(OrgBouncycastleAsn1CmpCertResponse, certReqId_, OrgBouncycastleAsn1ASN1Integer *)
J2OBJC_FIELD_SETTER(OrgBouncycastleAsn1CmpCertResponse, status_, OrgBouncycastleAsn1CmpPKIStatusInfo *)
J2OBJC_FIELD_SETTER(OrgBouncycastleAsn1CmpCertResponse, certifiedKeyPair_, OrgBouncycastleAsn1CmpCertifiedKeyPair *)
J2OBJC_FIELD_SETTER(OrgBouncycastleAsn1CmpCertResponse, rspInfo_, OrgBouncycastleAsn1ASN1OctetString *)

@implementation OrgBouncycastleAsn1CmpCertResponse

- (instancetype)initWithOrgBouncycastleAsn1ASN1Sequence:(OrgBouncycastleAsn1ASN1Sequence *)seq {
  if (self = [super init]) {
    certReqId_ = OrgBouncycastleAsn1ASN1Integer_getInstanceWithId_([((OrgBouncycastleAsn1ASN1Sequence *) nil_chk(seq)) getObjectAtWithInt:0]);
    status_ = OrgBouncycastleAsn1CmpPKIStatusInfo_getInstanceWithId_([seq getObjectAtWithInt:1]);
    if ([seq size] >= 3) {
      if ([seq size] == 3) {
        id<OrgBouncycastleAsn1ASN1Encodable> o = [seq getObjectAtWithInt:2];
        if ([o isKindOfClass:[OrgBouncycastleAsn1ASN1OctetString class]]) {
          rspInfo_ = OrgBouncycastleAsn1ASN1OctetString_getInstanceWithId_(o);
        }
        else {
          certifiedKeyPair_ = OrgBouncycastleAsn1CmpCertifiedKeyPair_getInstanceWithId_(o);
        }
      }
      else {
        certifiedKeyPair_ = OrgBouncycastleAsn1CmpCertifiedKeyPair_getInstanceWithId_([seq getObjectAtWithInt:2]);
        rspInfo_ = OrgBouncycastleAsn1ASN1OctetString_getInstanceWithId_([seq getObjectAtWithInt:3]);
      }
    }
  }
  return self;
}

+ (OrgBouncycastleAsn1CmpCertResponse *)getInstanceWithId:(id)o {
  return OrgBouncycastleAsn1CmpCertResponse_getInstanceWithId_(o);
}

- (instancetype)initWithOrgBouncycastleAsn1ASN1Integer:(OrgBouncycastleAsn1ASN1Integer *)certReqId
               withOrgBouncycastleAsn1CmpPKIStatusInfo:(OrgBouncycastleAsn1CmpPKIStatusInfo *)status {
  return [self initOrgBouncycastleAsn1CmpCertResponseWithOrgBouncycastleAsn1ASN1Integer:certReqId withOrgBouncycastleAsn1CmpPKIStatusInfo:status withOrgBouncycastleAsn1CmpCertifiedKeyPair:nil withOrgBouncycastleAsn1ASN1OctetString:nil];
}

- (instancetype)initOrgBouncycastleAsn1CmpCertResponseWithOrgBouncycastleAsn1ASN1Integer:(OrgBouncycastleAsn1ASN1Integer *)certReqId
                                                 withOrgBouncycastleAsn1CmpPKIStatusInfo:(OrgBouncycastleAsn1CmpPKIStatusInfo *)status
                                              withOrgBouncycastleAsn1CmpCertifiedKeyPair:(OrgBouncycastleAsn1CmpCertifiedKeyPair *)certifiedKeyPair
                                                  withOrgBouncycastleAsn1ASN1OctetString:(OrgBouncycastleAsn1ASN1OctetString *)rspInfo {
  if (self = [super init]) {
    if (certReqId == nil) {
      @throw [[JavaLangIllegalArgumentException alloc] initWithNSString:@"'certReqId' cannot be null"];
    }
    if (status == nil) {
      @throw [[JavaLangIllegalArgumentException alloc] initWithNSString:@"'status' cannot be null"];
    }
    self->certReqId_ = certReqId;
    self->status_ = status;
    self->certifiedKeyPair_ = certifiedKeyPair;
    self->rspInfo_ = rspInfo;
  }
  return self;
}

- (instancetype)initWithOrgBouncycastleAsn1ASN1Integer:(OrgBouncycastleAsn1ASN1Integer *)certReqId
               withOrgBouncycastleAsn1CmpPKIStatusInfo:(OrgBouncycastleAsn1CmpPKIStatusInfo *)status
            withOrgBouncycastleAsn1CmpCertifiedKeyPair:(OrgBouncycastleAsn1CmpCertifiedKeyPair *)certifiedKeyPair
                withOrgBouncycastleAsn1ASN1OctetString:(OrgBouncycastleAsn1ASN1OctetString *)rspInfo {
  return [self initOrgBouncycastleAsn1CmpCertResponseWithOrgBouncycastleAsn1ASN1Integer:certReqId withOrgBouncycastleAsn1CmpPKIStatusInfo:status withOrgBouncycastleAsn1CmpCertifiedKeyPair:certifiedKeyPair withOrgBouncycastleAsn1ASN1OctetString:rspInfo];
}

- (OrgBouncycastleAsn1ASN1Integer *)getCertReqId {
  return certReqId_;
}

- (OrgBouncycastleAsn1CmpPKIStatusInfo *)getStatus {
  return status_;
}

- (OrgBouncycastleAsn1CmpCertifiedKeyPair *)getCertifiedKeyPair {
  return certifiedKeyPair_;
}

- (OrgBouncycastleAsn1ASN1Primitive *)toASN1Primitive {
  OrgBouncycastleAsn1ASN1EncodableVector *v = [[OrgBouncycastleAsn1ASN1EncodableVector alloc] init];
  [v addWithOrgBouncycastleAsn1ASN1Encodable:certReqId_];
  [v addWithOrgBouncycastleAsn1ASN1Encodable:status_];
  if (certifiedKeyPair_ != nil) {
    [v addWithOrgBouncycastleAsn1ASN1Encodable:certifiedKeyPair_];
  }
  if (rspInfo_ != nil) {
    [v addWithOrgBouncycastleAsn1ASN1Encodable:rspInfo_];
  }
  return [[OrgBouncycastleAsn1DERSequence alloc] initWithOrgBouncycastleAsn1ASN1EncodableVector:v];
}

- (void)copyAllFieldsTo:(OrgBouncycastleAsn1CmpCertResponse *)other {
  [super copyAllFieldsTo:other];
  other->certReqId_ = certReqId_;
  other->status_ = status_;
  other->certifiedKeyPair_ = certifiedKeyPair_;
  other->rspInfo_ = rspInfo_;
}

@end

OrgBouncycastleAsn1CmpCertResponse *OrgBouncycastleAsn1CmpCertResponse_getInstanceWithId_(id o) {
  OrgBouncycastleAsn1CmpCertResponse_init();
  if ([o isKindOfClass:[OrgBouncycastleAsn1CmpCertResponse class]]) {
    return (OrgBouncycastleAsn1CmpCertResponse *) check_class_cast(o, [OrgBouncycastleAsn1CmpCertResponse class]);
  }
  if (o != nil) {
    return [[OrgBouncycastleAsn1CmpCertResponse alloc] initWithOrgBouncycastleAsn1ASN1Sequence:OrgBouncycastleAsn1ASN1Sequence_getInstanceWithId_(o)];
  }
  return nil;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgBouncycastleAsn1CmpCertResponse)