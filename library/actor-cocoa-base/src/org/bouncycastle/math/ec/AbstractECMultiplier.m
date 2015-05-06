//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/library/actor-cocoa-base/build/java/org/bouncycastle/math/ec/AbstractECMultiplier.java
//


#line 1 "/Users/ex3ndr/Develop/actor-model/library/actor-cocoa-base/build/java/org/bouncycastle/math/ec/AbstractECMultiplier.java"

#include "J2ObjC_source.h"
#include "java/math/BigInteger.h"
#include "org/bouncycastle/math/ec/AbstractECMultiplier.h"
#include "org/bouncycastle/math/ec/ECAlgorithms.h"
#include "org/bouncycastle/math/ec/ECCurve.h"
#include "org/bouncycastle/math/ec/ECPoint.h"

#pragma clang diagnostic ignored "-Wprotocol"
#pragma clang diagnostic ignored "-Wincomplete-implementation"


#line 5
@implementation OrgBouncycastleMathEcAbstractECMultiplier

- (OrgBouncycastleMathEcECPoint *)multiplyWithOrgBouncycastleMathEcECPoint:(OrgBouncycastleMathEcECPoint *)p
                                                    withJavaMathBigInteger:(JavaMathBigInteger *)k {
  
#line 9
  jint sign = [((JavaMathBigInteger *) nil_chk(k)) signum];
  if (sign == 0 || [((OrgBouncycastleMathEcECPoint *) nil_chk(p)) isInfinity]) {
    
#line 12
    return [((OrgBouncycastleMathEcECCurve *) nil_chk([((OrgBouncycastleMathEcECPoint *) nil_chk(p)) getCurve])) getInfinity];
  }
  
#line 15
  OrgBouncycastleMathEcECPoint *positive = [self multiplyPositiveWithOrgBouncycastleMathEcECPoint:p withJavaMathBigInteger:[k abs]];
  OrgBouncycastleMathEcECPoint *result = sign > 0 ? positive : [((OrgBouncycastleMathEcECPoint *) nil_chk(positive)) negate];
  
#line 22
  return OrgBouncycastleMathEcECAlgorithms_validatePointWithOrgBouncycastleMathEcECPoint_(result);
}

- (instancetype)init {
  OrgBouncycastleMathEcAbstractECMultiplier_init(self);
  return self;
}

@end

void OrgBouncycastleMathEcAbstractECMultiplier_init(OrgBouncycastleMathEcAbstractECMultiplier *self) {
  (void) NSObject_init(self);
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgBouncycastleMathEcAbstractECMultiplier)