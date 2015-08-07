//
// Created by lucas on 8/7/15.
//

#ifndef PRIME_GEN_SERVER_REQUEST_H
#define PRIME_GEN_SERVER_REQUEST_H

#include <stdint.h>

#define PRIMES_PER_REQUEST 10000

typedef struct {
    uint64_t first;
    uint64_t last;
} t_request;

#endif //PRIME_GEN_SERVER_REQUEST_H
