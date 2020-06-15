#include "probability.h"
#include <math.h>

__inline__
__device__
uint32_t randint(uint32_t a, uint32_t b)
{
	return (rand() % (b - a - 1)) + a;
}

__inline__
__device__
uint64_t factorial(uint64_t n)
{
	return tgamma(n + 1);
}

__inline__
__device__
uint64_t binomial_coef(uint64_t n, uint64_t k)
{
	return factorial(n) / (factorial(k) * factorial(n - k));
}

__inline__
__device__
uint8_t binomial_dist(uint32_t k, uint32_t n, float p)
{
	uint32_t prob = 100 * (float)binomial_coef(k, n) * pow(p, k) * pow(1 - p, n - k);
	return randint(0, 100) <= prob;		
}
