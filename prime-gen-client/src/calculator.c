//
// Created by lucas on 8/7/15.
//

#include <stdbool.h>
#include <request.h>
#include <reply.h>
#include "calculator.h"

int calculator_is_prime(uint64_t number) {
    if (number == 1) return false;
    if (number == 2) return true;
    if (number % 2 == 0) return false;

    uint64_t cur;
    for (cur = 3; cur < (number / 2); cur += 2) {
        if (number % cur == 0) return false;
    }

    return true;
}

t_reply calculator_generate_reply(t_request request) {
    t_reply reply;

    reply.primes_found = 0;

    uint64_t cur;
    for (cur = request.first; cur < request.last; cur++) {
        if (calculator_is_prime(cur)) {
            reply.prime_array[reply.primes_found] = cur;
            reply.primes_found++;
        }
    }

    return reply;
}
