//
// Created by lucas on 8/7/15.
//

#ifndef PRIME_GEN_SERVER_CLIENT_H
#define PRIME_GEN_SERVER_CLIENT_H

#include <netinet/in.h>

typedef struct s_client t_client;
struct s_client {
    pthread_t client_thread;
    struct sockaddr_in server_socket;
    int socket_descriptor;
};

t_client*   client_new      ();
void        client_run      (t_client * client);
void        client_destroy  (t_client * client);

#endif //PRIME_GEN_SERVER_CLIENT_H
