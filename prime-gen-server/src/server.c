//
// Created by lucas on 8/7/15.
//

#include <stdlib.h>
#include <server.h>
#include <client.h>
#include "error.h"
#include "server.h"
#include <stdbool.h>
#include <unistd.h>
#include <errno.h>
#include <stdio.h>

void * server_init_client(void * data) {
    t_client * client = (t_client*) data;
    client_run(client);
    client_destroy(client);
    return NULL;
}

t_server *server_new() {
    t_server * server;

    server = malloc(sizeof(t_server));
    server->socket_descriptor = socket(AF_INET, SOCK_STREAM, IPPROTO_TCP);
    if (server->socket_descriptor < 0) {
        fprintf(stderr, "Error: %d", errno);
        exit(errno);
    }

    server->server_socket.sin_family = AF_INET;
    server->server_socket.sin_addr.s_addr = INADDR_ANY;
    server->server_socket.sin_port = htons(9876);

    if (bind(server->socket_descriptor, (struct sockaddr*) &server->server_socket, sizeof(server->server_socket)) < 0) {
        fprintf(stderr, "Error: %d", errno);
        exit(errno);
    }

    listen(server->socket_descriptor, 10);

    return server;
}

void server_run(t_server *server) {
    int running = true;
    while(running) {
        size_t sockaddrin_size = sizeof(struct sockaddr_in);
        t_client * client = client_new();
        client->socket_descriptor = accept(server->socket_descriptor, (struct sockaddr *) &client->server_socket,
                                           (socklen_t *) &sockaddrin_size);

        if (client->socket_descriptor < 0) {
            running = false;
            fprintf(stderr, "Error: %d", errno);
            continue;
        }

        pthread_create(&client->client_thread, NULL, server_init_client, client);
    }
}

void server_destroy(t_server *server) {
    close(server->socket_descriptor);
    free(server);
}
