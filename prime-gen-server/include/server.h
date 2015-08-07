//
// Created by lucas on 8/7/15.
//

#ifndef PRIME_GEN_SERVER_SERVER_H
#define PRIME_GEN_SERVER_SERVER_H

#include "client.h"
#include <pthread.h>
#include <netinet/in.h>

typedef struct {
    struct sockaddr_in server_socket;
    int socket_descriptor;
} t_server;

t_server*   server_new      ();
void        server_run      (t_server * server);
void        server_destroy  (t_server * server);

#endif //PRIME_GEN_SERVER_SERVER_H
