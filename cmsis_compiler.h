#include <stdint.h>
#define  __ALIGNED(x) __attribute__((aligned(x)))
#define __STATIC_FORCEINLINE static __attribute__((inline))
#define __STATIC_INLINE static __attribute__((inline))
#pragma GCC diagnostic ignored "-Wunused-function"
#pragma GCC diagnostic ignored "-Wattributes"

#define __RESTRICT restrict

#include "../codal-stm32/inc/CMSIS/core_cm4.h"