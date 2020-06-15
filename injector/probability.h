#ifndef PROBABILITY_H
#define PROBABILITY_H

#ifdef __cplusplus
extern "C" {
#endif

#include <stdint.h>

__inline__
__device__
uint32_t randint(uint32_t, uint32_t);

__inline__
__device__
uint64_t factorial(uint64_t);

__inline__
__device__
uint64_t binomial_coef(uint32_t uint32_t);

__inline__
__device__
uint8_t binomial_dist(uint32_t, uint32_t, float);

#ifdef __cplusplus
}
#endif

#endif /* PROBABILITY_H */
