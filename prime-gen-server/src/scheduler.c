//
// Created by lucas on 8/7/15.
//

#include <request.h>
#include "scheduler.h"

uint64_t scheduler_next() {
    static uint64_t current = 0;
    uint64_t next = current;
    current += PRIMES_PER_REQUEST;
    return next;
}
