#include <client.h>

int main() {
    t_client * client;
    client = client_new();
    client_run(client);
    client_destroy(client);
    return 0;
}