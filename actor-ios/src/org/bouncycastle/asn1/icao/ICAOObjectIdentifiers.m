//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/actor-ios/build/java/org/bouncycastle/asn1/icao/ICAOObjectIdentifiers.java
//

#include "J2ObjC_source.h"
#include "org/bouncycastle/asn1/ASN1ObjectIdentifier.h"
#include "org/bouncycastle/asn1/icao/ICAOObjectIdentifiers.h"

BOOL OrgBouncycastleAsn1IcaoICAOObjectIdentifiers_initialized = NO;

OrgBouncycastleAsn1ASN1ObjectIdentifier * OrgBouncycastleAsn1IcaoICAOObjectIdentifiers_id_icao_;
OrgBouncycastleAsn1ASN1ObjectIdentifier * OrgBouncycastleAsn1IcaoICAOObjectIdentifiers_id_icao_mrtd_;
OrgBouncycastleAsn1ASN1ObjectIdentifier * OrgBouncycastleAsn1IcaoICAOObjectIdentifiers_id_icao_mrtd_security_;
OrgBouncycastleAsn1ASN1ObjectIdentifier * OrgBouncycastleAsn1IcaoICAOObjectIdentifiers_id_icao_ldsSecurityObject_;
OrgBouncycastleAsn1ASN1ObjectIdentifier * OrgBouncycastleAsn1IcaoICAOObjectIdentifiers_id_icao_cscaMasterList_;
OrgBouncycastleAsn1ASN1ObjectIdentifier * OrgBouncycastleAsn1IcaoICAOObjectIdentifiers_id_icao_cscaMasterListSigningKey_;
OrgBouncycastleAsn1ASN1ObjectIdentifier * OrgBouncycastleAsn1IcaoICAOObjectIdentifiers_id_icao_documentTypeList_;
OrgBouncycastleAsn1ASN1ObjectIdentifier * OrgBouncycastleAsn1IcaoICAOObjectIdentifiers_id_icao_aaProtocolObject_;
OrgBouncycastleAsn1ASN1ObjectIdentifier * OrgBouncycastleAsn1IcaoICAOObjectIdentifiers_id_icao_extensions_;
OrgBouncycastleAsn1ASN1ObjectIdentifier * OrgBouncycastleAsn1IcaoICAOObjectIdentifiers_id_icao_extensions_namechangekeyrollover_;

@implementation OrgBouncycastleAsn1IcaoICAOObjectIdentifiers

+ (void)initialize {
  if (self == [OrgBouncycastleAsn1IcaoICAOObjectIdentifiers class]) {
    OrgBouncycastleAsn1IcaoICAOObjectIdentifiers_id_icao_ = [[OrgBouncycastleAsn1ASN1ObjectIdentifier alloc] initWithNSString:@"2.23.136"];
    OrgBouncycastleAsn1IcaoICAOObjectIdentifiers_id_icao_mrtd_ = [OrgBouncycastleAsn1IcaoICAOObjectIdentifiers_id_icao_ branchWithNSString:@"1"];
    OrgBouncycastleAsn1IcaoICAOObjectIdentifiers_id_icao_mrtd_security_ = [((OrgBouncycastleAsn1ASN1ObjectIdentifier *) nil_chk(OrgBouncycastleAsn1IcaoICAOObjectIdentifiers_id_icao_mrtd_)) branchWithNSString:@"1"];
    OrgBouncycastleAsn1IcaoICAOObjectIdentifiers_id_icao_ldsSecurityObject_ = [((OrgBouncycastleAsn1ASN1ObjectIdentifier *) nil_chk(OrgBouncycastleAsn1IcaoICAOObjectIdentifiers_id_icao_mrtd_security_)) branchWithNSString:@"1"];
    OrgBouncycastleAsn1IcaoICAOObjectIdentifiers_id_icao_cscaMasterList_ = [OrgBouncycastleAsn1IcaoICAOObjectIdentifiers_id_icao_mrtd_security_ branchWithNSString:@"2"];
    OrgBouncycastleAsn1IcaoICAOObjectIdentifiers_id_icao_cscaMasterListSigningKey_ = [OrgBouncycastleAsn1IcaoICAOObjectIdentifiers_id_icao_mrtd_security_ branchWithNSString:@"3"];
    OrgBouncycastleAsn1IcaoICAOObjectIdentifiers_id_icao_documentTypeList_ = [OrgBouncycastleAsn1IcaoICAOObjectIdentifiers_id_icao_mrtd_security_ branchWithNSString:@"4"];
    OrgBouncycastleAsn1IcaoICAOObjectIdentifiers_id_icao_aaProtocolObject_ = [OrgBouncycastleAsn1IcaoICAOObjectIdentifiers_id_icao_mrtd_security_ branchWithNSString:@"5"];
    OrgBouncycastleAsn1IcaoICAOObjectIdentifiers_id_icao_extensions_ = [OrgBouncycastleAsn1IcaoICAOObjectIdentifiers_id_icao_mrtd_security_ branchWithNSString:@"6"];
    OrgBouncycastleAsn1IcaoICAOObjectIdentifiers_id_icao_extensions_namechangekeyrollover_ = [((OrgBouncycastleAsn1ASN1ObjectIdentifier *) nil_chk(OrgBouncycastleAsn1IcaoICAOObjectIdentifiers_id_icao_extensions_)) branchWithNSString:@"1"];
    J2OBJC_SET_INITIALIZED(OrgBouncycastleAsn1IcaoICAOObjectIdentifiers)
  }
}

@end

J2OBJC_INTERFACE_TYPE_LITERAL_SOURCE(OrgBouncycastleAsn1IcaoICAOObjectIdentifiers)