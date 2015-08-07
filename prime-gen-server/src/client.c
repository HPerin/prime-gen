//
// Created by lucas on 8/7/15.
//

#include <libzvbi.h>
#include <client.h>
#include <stdlib.h>
#include <unistd.h>
#include <stdbool.h>
#include <scheduler.h>
#include <request.h>
#include <reply.h>
#include "client.h"

t_client *client_new() {
    t_client * client;

    client = malloc(sizeof(t_client));
    client->socket_descriptor = 0;

    return client;
}


void client_run(t_client *client) {
    int running = true;
    while(running) {
        t_request request;
        request.first = scheduler_next();
        request.last = request.first + PRIMES_PER_REQUEST;

        if (send(client->socket_descriptor, &request, sizeof(t_request), 0) < 0)
            running = false;

        t_reply reply;
        if (recv(client->socket_descriptor, &reply, sizeof(t_reply), 0) < 0)
            running = false;

        int i;
        for (i = 0; i < reply.primes_found; i++) {
            printf("%lu\n", reply.prime_array[i]);
        }

        fflush(stdout);
    }
}

void client_destroy(t_client *client) {
    close(client->socket_descriptor);
    free(client);
}
