//
// Created by lucas on 8/7/15.
//

#ifndef PRIME_GEN_SERVER_REPLY_H
#define PRIME_GEN_SERVER_REPLY_H

#include <stdint.h>
#include "request.h"

typedef struct {
    uint64_t prime_array[PRIMES_PER_REQUEST];
    uint32_t primes_found;
} t_reply;

#endif //PRIME_GEN_SERVER_REPLY_H
