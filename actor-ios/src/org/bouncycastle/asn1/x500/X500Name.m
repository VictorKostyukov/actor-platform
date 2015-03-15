//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/actor-ios/build/java/org/bouncycastle/asn1/x500/X500Name.java
//

#include "IOSObjectArray.h"
#include "J2ObjC_source.h"
#include "java/lang/Exception.h"
#include "java/lang/NullPointerException.h"
#include "java/lang/System.h"
#include "java/util/Enumeration.h"
#include "org/bouncycastle/asn1/ASN1Encodable.h"
#include "org/bouncycastle/asn1/ASN1ObjectIdentifier.h"
#include "org/bouncycastle/asn1/ASN1Primitive.h"
#include "org/bouncycastle/asn1/ASN1Sequence.h"
#include "org/bouncycastle/asn1/ASN1TaggedObject.h"
#include "org/bouncycastle/asn1/DERSequence.h"
#include "org/bouncycastle/asn1/x500/AttributeTypeAndValue.h"
#include "org/bouncycastle/asn1/x500/RDN.h"
#include "org/bouncycastle/asn1/x500/X500Name.h"
#include "org/bouncycastle/asn1/x500/X500NameStyle.h"
#include "org/bouncycastle/asn1/x500/style/BCStyle.h"

@interface OrgBouncycastleAsn1X500X500Name () {
 @public
  jboolean isHashCodeCalculated_;
  jint hashCodeValue_;
  id<OrgBouncycastleAsn1X500X500NameStyle> style_;
  IOSObjectArray *rdns_;
}
- (instancetype)initWithOrgBouncycastleAsn1ASN1Sequence:(OrgBouncycastleAsn1ASN1Sequence *)seq;
- (instancetype)initWithOrgBouncycastleAsn1X500X500NameStyle:(id<OrgBouncycastleAsn1X500X500NameStyle>)style
                         withOrgBouncycastleAsn1ASN1Sequence:(OrgBouncycastleAsn1ASN1Sequence *)seq;
@end

J2OBJC_FIELD_SETTER(OrgBouncycastleAsn1X500X500Name, style_, id<OrgBouncycastleAsn1X500X500NameStyle>)
J2OBJC_FIELD_SETTER(OrgBouncycastleAsn1X500X500Name, rdns_, IOSObjectArray *)

BOOL OrgBouncycastleAsn1X500X500Name_initialized = NO;

@implementation OrgBouncycastleAsn1X500X500Name

id<OrgBouncycastleAsn1X500X500NameStyle> OrgBouncycastleAsn1X500X500Name_defaultStyle_;

- (instancetype)initWithOrgBouncycastleAsn1X500X500NameStyle:(id<OrgBouncycastleAsn1X500X500NameStyle>)style
                         withOrgBouncycastleAsn1X500X500Name:(OrgBouncycastleAsn1X500X500Name *)name {
  if (self = [super init]) {
    self->rdns_ = ((OrgBouncycastleAsn1X500X500Name *) nil_chk(name))->rdns_;
    self->style_ = style;
  }
  return self;
}

+ (OrgBouncycastleAsn1X500X500Name *)getInstanceWithOrgBouncycastleAsn1ASN1TaggedObject:(OrgBouncycastleAsn1ASN1TaggedObject *)obj
                                                                            withBoolean:(jboolean)explicit_ {
  return OrgBouncycastleAsn1X500X500Name_getInstanceWithOrgBouncycastleAsn1ASN1TaggedObject_withBoolean_(obj, explicit_);
}

+ (OrgBouncycastleAsn1X500X500Name *)getInstanceWithId:(id)obj {
  return OrgBouncycastleAsn1X500X500Name_getInstanceWithId_(obj);
}

+ (OrgBouncycastleAsn1X500X500Name *)getInstanceWithOrgBouncycastleAsn1X500X500NameStyle:(id<OrgBouncycastleAsn1X500X500NameStyle>)style
                                                                                  withId:(id)obj {
  return OrgBouncycastleAsn1X500X500Name_getInstanceWithOrgBouncycastleAsn1X500X500NameStyle_withId_(style, obj);
}

- (instancetype)initWithOrgBouncycastleAsn1ASN1Sequence:(OrgBouncycastleAsn1ASN1Sequence *)seq {
  return [self initOrgBouncycastleAsn1X500X500NameWithOrgBouncycastleAsn1X500X500NameStyle:OrgBouncycastleAsn1X500X500Name_defaultStyle_ withOrgBouncycastleAsn1ASN1Sequence:seq];
}

- (instancetype)initOrgBouncycastleAsn1X500X500NameWithOrgBouncycastleAsn1X500X500NameStyle:(id<OrgBouncycastleAsn1X500X500NameStyle>)style
                                                        withOrgBouncycastleAsn1ASN1Sequence:(OrgBouncycastleAsn1ASN1Sequence *)seq {
  if (self = [super init]) {
    self->style_ = style;
    self->rdns_ = [IOSObjectArray newArrayWithLength:[((OrgBouncycastleAsn1ASN1Sequence *) nil_chk(seq)) size] type:OrgBouncycastleAsn1X500RDN_class_()];
    jint index = 0;
    for (id<JavaUtilEnumeration> e = [seq getObjects]; [((id<JavaUtilEnumeration>) nil_chk(e)) hasMoreElements]; ) {
      IOSObjectArray_Set(rdns_, index++, OrgBouncycastleAsn1X500RDN_getInstanceWithId_([e nextElement]));
    }
  }
  return self;
}

- (instancetype)initWithOrgBouncycastleAsn1X500X500NameStyle:(id<OrgBouncycastleAsn1X500X500NameStyle>)style
                         withOrgBouncycastleAsn1ASN1Sequence:(OrgBouncycastleAsn1ASN1Sequence *)seq {
  return [self initOrgBouncycastleAsn1X500X500NameWithOrgBouncycastleAsn1X500X500NameStyle:style withOrgBouncycastleAsn1ASN1Sequence:seq];
}

- (instancetype)initOrgBouncycastleAsn1X500X500NameWithOrgBouncycastleAsn1X500RDNArray:(IOSObjectArray *)rDNs {
  return [self initOrgBouncycastleAsn1X500X500NameWithOrgBouncycastleAsn1X500X500NameStyle:OrgBouncycastleAsn1X500X500Name_defaultStyle_ withOrgBouncycastleAsn1X500RDNArray:rDNs];
}

- (instancetype)initWithOrgBouncycastleAsn1X500RDNArray:(IOSObjectArray *)rDNs {
  return [self initOrgBouncycastleAsn1X500X500NameWithOrgBouncycastleAsn1X500RDNArray:rDNs];
}

- (instancetype)initOrgBouncycastleAsn1X500X500NameWithOrgBouncycastleAsn1X500X500NameStyle:(id<OrgBouncycastleAsn1X500X500NameStyle>)style
                                                        withOrgBouncycastleAsn1X500RDNArray:(IOSObjectArray *)rDNs {
  if (self = [super init]) {
    self->rdns_ = rDNs;
    self->style_ = style;
  }
  return self;
}

- (instancetype)initWithOrgBouncycastleAsn1X500X500NameStyle:(id<OrgBouncycastleAsn1X500X500NameStyle>)style
                         withOrgBouncycastleAsn1X500RDNArray:(IOSObjectArray *)rDNs {
  return [self initOrgBouncycastleAsn1X500X500NameWithOrgBouncycastleAsn1X500X500NameStyle:style withOrgBouncycastleAsn1X500RDNArray:rDNs];
}

- (instancetype)initWithNSString:(NSString *)dirName {
  return [self initOrgBouncycastleAsn1X500X500NameWithOrgBouncycastleAsn1X500X500NameStyle:OrgBouncycastleAsn1X500X500Name_defaultStyle_ withNSString:dirName];
}

- (instancetype)initOrgBouncycastleAsn1X500X500NameWithOrgBouncycastleAsn1X500X500NameStyle:(id<OrgBouncycastleAsn1X500X500NameStyle>)style
                                                                               withNSString:(NSString *)dirName {
  if (self = [self initOrgBouncycastleAsn1X500X500NameWithOrgBouncycastleAsn1X500RDNArray:[((id<OrgBouncycastleAsn1X500X500NameStyle>) nil_chk(style)) fromStringWithNSString:dirName]]) {
    self->style_ = style;
  }
  return self;
}

- (instancetype)initWithOrgBouncycastleAsn1X500X500NameStyle:(id<OrgBouncycastleAsn1X500X500NameStyle>)style
                                                withNSString:(NSString *)dirName {
  return [self initOrgBouncycastleAsn1X500X500NameWithOrgBouncycastleAsn1X500X500NameStyle:style withNSString:dirName];
}

- (IOSObjectArray *)getRDNs {
  IOSObjectArray *tmp = [IOSObjectArray newArrayWithLength:((IOSObjectArray *) nil_chk(self->rdns_))->size_ type:OrgBouncycastleAsn1X500RDN_class_()];
  JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(rdns_, 0, tmp, 0, tmp->size_);
  return tmp;
}

- (IOSObjectArray *)getAttributeTypes {
  jint count = 0;
  for (jint i = 0; i != ((IOSObjectArray *) nil_chk(rdns_))->size_; i++) {
    OrgBouncycastleAsn1X500RDN *rdn = IOSObjectArray_Get(rdns_, i);
    count += [((OrgBouncycastleAsn1X500RDN *) nil_chk(rdn)) size];
  }
  IOSObjectArray *res = [IOSObjectArray newArrayWithLength:count type:OrgBouncycastleAsn1ASN1ObjectIdentifier_class_()];
  count = 0;
  for (jint i = 0; i != rdns_->size_; i++) {
    OrgBouncycastleAsn1X500RDN *rdn = IOSObjectArray_Get(rdns_, i);
    if ([((OrgBouncycastleAsn1X500RDN *) nil_chk(rdn)) isMultiValued]) {
      IOSObjectArray *attr = [rdn getTypesAndValues];
      for (jint j = 0; j != ((IOSObjectArray *) nil_chk(attr))->size_; j++) {
        IOSObjectArray_Set(res, count++, [((OrgBouncycastleAsn1X500AttributeTypeAndValue *) nil_chk(IOSObjectArray_Get(attr, j))) getType]);
      }
    }
    else if ([rdn size] != 0) {
      IOSObjectArray_Set(res, count++, [((OrgBouncycastleAsn1X500AttributeTypeAndValue *) nil_chk([rdn getFirst])) getType]);
    }
  }
  return res;
}

- (IOSObjectArray *)getRDNsWithOrgBouncycastleAsn1ASN1ObjectIdentifier:(OrgBouncycastleAsn1ASN1ObjectIdentifier *)attributeType {
  IOSObjectArray *res = [IOSObjectArray newArrayWithLength:((IOSObjectArray *) nil_chk(rdns_))->size_ type:OrgBouncycastleAsn1X500RDN_class_()];
  jint count = 0;
  for (jint i = 0; i != rdns_->size_; i++) {
    OrgBouncycastleAsn1X500RDN *rdn = IOSObjectArray_Get(rdns_, i);
    if ([((OrgBouncycastleAsn1X500RDN *) nil_chk(rdn)) isMultiValued]) {
      IOSObjectArray *attr = [rdn getTypesAndValues];
      for (jint j = 0; j != ((IOSObjectArray *) nil_chk(attr))->size_; j++) {
        if ([((OrgBouncycastleAsn1ASN1ObjectIdentifier *) nil_chk([((OrgBouncycastleAsn1X500AttributeTypeAndValue *) nil_chk(IOSObjectArray_Get(attr, j))) getType])) isEqual:attributeType]) {
          IOSObjectArray_Set(res, count++, rdn);
          break;
        }
      }
    }
    else {
      if ([((OrgBouncycastleAsn1ASN1ObjectIdentifier *) nil_chk([((OrgBouncycastleAsn1X500AttributeTypeAndValue *) nil_chk([rdn getFirst])) getType])) isEqual:attributeType]) {
        IOSObjectArray_Set(res, count++, rdn);
      }
    }
  }
  IOSObjectArray *tmp = [IOSObjectArray newArrayWithLength:count type:OrgBouncycastleAsn1X500RDN_class_()];
  JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(res, 0, tmp, 0, tmp->size_);
  return tmp;
}

- (OrgBouncycastleAsn1ASN1Primitive *)toASN1Primitive {
  return [[OrgBouncycastleAsn1DERSequence alloc] initWithOrgBouncycastleAsn1ASN1EncodableArray:rdns_];
}

- (NSUInteger)hash {
  if (isHashCodeCalculated_) {
    return hashCodeValue_;
  }
  isHashCodeCalculated_ = YES;
  hashCodeValue_ = [((id<OrgBouncycastleAsn1X500X500NameStyle>) nil_chk(style_)) calculateHashCodeWithOrgBouncycastleAsn1X500X500Name:self];
  return hashCodeValue_;
}

- (jboolean)isEqual:(id)obj {
  if (obj == self) {
    return YES;
  }
  if (!([obj isKindOfClass:[OrgBouncycastleAsn1X500X500Name class]] || [obj isKindOfClass:[OrgBouncycastleAsn1ASN1Sequence class]])) {
    return NO;
  }
  OrgBouncycastleAsn1ASN1Primitive *derO = [((id<OrgBouncycastleAsn1ASN1Encodable>) nil_chk(((id<OrgBouncycastleAsn1ASN1Encodable>) check_protocol_cast(obj, @protocol(OrgBouncycastleAsn1ASN1Encodable))))) toASN1Primitive];
  if ([((OrgBouncycastleAsn1ASN1Primitive *) nil_chk([self toASN1Primitive])) isEqual:derO]) {
    return YES;
  }
  @try {
    return [((id<OrgBouncycastleAsn1X500X500NameStyle>) nil_chk(style_)) areEqualWithOrgBouncycastleAsn1X500X500Name:self withOrgBouncycastleAsn1X500X500Name:[[OrgBouncycastleAsn1X500X500Name alloc] initWithOrgBouncycastleAsn1ASN1Sequence:OrgBouncycastleAsn1ASN1Sequence_getInstanceWithId_([((id<OrgBouncycastleAsn1ASN1Encodable>) nil_chk(((id<OrgBouncycastleAsn1ASN1Encodable>) check_protocol_cast(obj, @protocol(OrgBouncycastleAsn1ASN1Encodable))))) toASN1Primitive])]];
  }
  @catch (JavaLangException *e) {
    return NO;
  }
}

- (NSString *)description {
  return [((id<OrgBouncycastleAsn1X500X500NameStyle>) nil_chk(style_)) toStringWithOrgBouncycastleAsn1X500X500Name:self];
}

+ (void)setDefaultStyleWithOrgBouncycastleAsn1X500X500NameStyle:(id<OrgBouncycastleAsn1X500X500NameStyle>)style {
  OrgBouncycastleAsn1X500X500Name_setDefaultStyleWithOrgBouncycastleAsn1X500X500NameStyle_(style);
}

+ (id<OrgBouncycastleAsn1X500X500NameStyle>)getDefaultStyle {
  return OrgBouncycastleAsn1X500X500Name_getDefaultStyle();
}

- (void)copyAllFieldsTo:(OrgBouncycastleAsn1X500X500Name *)other {
  [super copyAllFieldsTo:other];
  other->isHashCodeCalculated_ = isHashCodeCalculated_;
  other->hashCodeValue_ = hashCodeValue_;
  other->style_ = style_;
  other->rdns_ = rdns_;
}

+ (void)initialize {
  if (self == [OrgBouncycastleAsn1X500X500Name class]) {
    OrgBouncycastleAsn1X500X500Name_defaultStyle_ = OrgBouncycastleAsn1X500StyleBCStyle_get_INSTANCE_();
    J2OBJC_SET_INITIALIZED(OrgBouncycastleAsn1X500X500Name)
  }
}

@end

OrgBouncycastleAsn1X500X500Name *OrgBouncycastleAsn1X500X500Name_getInstanceWithOrgBouncycastleAsn1ASN1TaggedObject_withBoolean_(OrgBouncycastleAsn1ASN1TaggedObject *obj, jboolean explicit_) {
  OrgBouncycastleAsn1X500X500Name_init();
  return OrgBouncycastleAsn1X500X500Name_getInstanceWithId_(OrgBouncycastleAsn1ASN1Sequence_getInstanceWithOrgBouncycastleAsn1ASN1TaggedObject_withBoolean_(obj, YES));
}

OrgBouncycastleAsn1X500X500Name *OrgBouncycastleAsn1X500X500Name_getInstanceWithId_(id obj) {
  OrgBouncycastleAsn1X500X500Name_init();
  if ([obj isKindOfClass:[OrgBouncycastleAsn1X500X500Name class]]) {
    return (OrgBouncycastleAsn1X500X500Name *) check_class_cast(obj, [OrgBouncycastleAsn1X500X500Name class]);
  }
  else if (obj != nil) {
    return [[OrgBouncycastleAsn1X500X500Name alloc] initWithOrgBouncycastleAsn1ASN1Sequence:OrgBouncycastleAsn1ASN1Sequence_getInstanceWithId_(obj)];
  }
  return nil;
}

OrgBouncycastleAsn1X500X500Name *OrgBouncycastleAsn1X500X500Name_getInstanceWithOrgBouncycastleAsn1X500X500NameStyle_withId_(id<OrgBouncycastleAsn1X500X500NameStyle> style, id obj) {
  OrgBouncycastleAsn1X500X500Name_init();
  if ([obj isKindOfClass:[OrgBouncycastleAsn1X500X500Name class]]) {
    return OrgBouncycastleAsn1X500X500Name_getInstanceWithOrgBouncycastleAsn1X500X500NameStyle_withId_(style, [((OrgBouncycastleAsn1X500X500Name *) nil_chk(((OrgBouncycastleAsn1X500X500Name *) check_class_cast(obj, [OrgBouncycastleAsn1X500X500Name class])))) toASN1Primitive]);
  }
  else if (obj != nil) {
    return [[OrgBouncycastleAsn1X500X500Name alloc] initWithOrgBouncycastleAsn1X500X500NameStyle:style withOrgBouncycastleAsn1ASN1Sequence:OrgBouncycastleAsn1ASN1Sequence_getInstanceWithId_(obj)];
  }
  return nil;
}

void OrgBouncycastleAsn1X500X500Name_setDefaultStyleWithOrgBouncycastleAsn1X500X500NameStyle_(id<OrgBouncycastleAsn1X500X500NameStyle> style) {
  OrgBouncycastleAsn1X500X500Name_init();
  if (style == nil) {
    @throw [[JavaLangNullPointerException alloc] initWithNSString:@"cannot set style to null"];
  }
  OrgBouncycastleAsn1X500X500Name_defaultStyle_ = style;
}

id<OrgBouncycastleAsn1X500X500NameStyle> OrgBouncycastleAsn1X500X500Name_getDefaultStyle() {
  OrgBouncycastleAsn1X500X500Name_init();
  return OrgBouncycastleAsn1X500X500Name_defaultStyle_;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgBouncycastleAsn1X500X500Name)