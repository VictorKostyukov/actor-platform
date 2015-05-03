//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/library/actor-cocoa-base/build/java/im/actor/model/util/CRC32.java
//


#line 1 "/Users/ex3ndr/Develop/actor-model/library/actor-cocoa-base/build/java/im/actor/model/util/CRC32.java"

#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "im/actor/model/util/CRC32.h"

@interface AMCRC32 () {
 @public
  jint crc_;
}

+ (IOSIntArray *)make_crc_table;

@end

static IOSIntArray *AMCRC32_crc_table_;
J2OBJC_STATIC_FIELD_GETTER(AMCRC32, crc_table_, IOSIntArray *)
J2OBJC_STATIC_FIELD_SETTER(AMCRC32, crc_table_, IOSIntArray *)

__attribute__((unused)) static IOSIntArray *AMCRC32_make_crc_table();

J2OBJC_INITIALIZED_DEFN(AMCRC32)


#line 6
@implementation AMCRC32


#line 20
+ (IOSIntArray *)make_crc_table {
  return AMCRC32_make_crc_table();
}


#line 38
- (jlong)getValue {
  return (jlong) crc_ & (jlong) 0xffffffffLL;
}


#line 45
- (void)reset {
  crc_ = 0;
}


#line 55
- (void)updateWithInt:(jint)bval {
  jint c = ~crc_;
  c = IOSIntArray_Get(nil_chk(AMCRC32_crc_table_), (c ^ bval) & (jint) 0xff) ^ (URShift32(c, 8));
  crc_ = ~c;
}


#line 68
- (void)updateWithByteArray:(IOSByteArray *)buf
                    withInt:(jint)off
                    withInt:(jint)len {
  jint c = ~crc_;
  while (--len >= 0)
#line 71
  c = IOSIntArray_Get(nil_chk(AMCRC32_crc_table_), (c ^ IOSByteArray_Get(nil_chk(buf), off++)) & (jint) 0xff) ^ (URShift32(c, 8));
  crc_ = ~c;
}

- (void)updateWithByteArray:(IOSByteArray *)buf {
  [self updateWithByteArray:buf withInt:0 withInt:((IOSByteArray *) nil_chk(buf))->size_];
}

- (instancetype)init {
  AMCRC32_init(self);
  return self;
}

+ (void)initialize {
  if (self == [AMCRC32 class]) {
    AMCRC32_crc_table_ = AMCRC32_make_crc_table();
    J2OBJC_SET_INITIALIZED(AMCRC32)
  }
}

@end


#line 20
IOSIntArray *AMCRC32_make_crc_table() {
  AMCRC32_initialize();
  
#line 21
  IOSIntArray *crc_table = [IOSIntArray newArrayWithLength:256];
  for (jint n = 0; n < 256; n++) {
    jint c = n;
    for (jint k = 8; --k >= 0; ) {
      if ((c & 1) != 0)
#line 26
      c = (jint) 0xedb88320 ^ (URShift32(c, 1));
      else
#line 28
      c = URShift32(c, 1);
    }
    *IOSIntArray_GetRef(crc_table, n) = c;
  }
  return crc_table;
}

void AMCRC32_init(AMCRC32 *self) {
  (void) NSObject_init(self);
  self->crc_ =
#line 10
  0;
}

AMCRC32 *new_AMCRC32_init() {
  AMCRC32 *self = [AMCRC32 alloc];
  AMCRC32_init(self);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(AMCRC32)