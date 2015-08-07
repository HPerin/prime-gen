#include <server.h>

int main() {
    t_server * server;
    server = server_new();
    server_run(server);
    server_destroy(server);
    return 0;
}