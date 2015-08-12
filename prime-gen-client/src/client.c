//
// Created by lucas on 8/7/15.
//

#include <stdio.h>
#include <stdlib.h>
#include <client.h>
#include <arpa/inet.h>
#include "client.h"
#include <errno.h>
#include <unistd.h>
#include <stdbool.h>
#include <request.h>
#include <reply.h>
#include <calculator.h>
#include <ui.h>

t_client *client_new() {
    t_client * client;

    client = malloc(sizeof(t_client));
    client->socket_descriptor = socket(AF_INET, SOCK_STREAM, IPPROTO_TCP);

    client->socket.sin_family = AF_INET;
    client->socket.sin_addr.s_addr = inet_addr("127.0.0.1");
    client->socket.sin_port = htons(9876);

    return client;
}

void client_run(t_client * client) {
    if (connect(client->socket_descriptor, (struct sockaddr*) & client->socket, sizeof(client->socket)) < 0) {
        fprintf(stderr, "Error: %d", errno);
        exit(errno);
    }

    int running = true;
    while(running) {
        t_request request;
        t_reply reply;

        if (recv(client->socket_descriptor, &request, sizeof(t_request), 0) < 0) {
            running = false;
            continue;
        }

        ui_set_prime_range(request);
        reply = calculator_generate_reply(request);

        if (send(client->socket_descriptor, &reply, sizeof(t_reply), 0) < 0) {
            running = false;
            continue;
        }
    }
}

void client_destroy(t_client * client) {
    close(client->socket_descriptor);
    free(client);
}
