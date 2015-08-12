//
// Created by lucas on 11/08/15.
//

#ifndef PRIME_GEN_CLIENT_UI_H
#define PRIME_GEN_CLIENT_UI_H

#include <gtk/gtk.h>
#include <request.h>

typedef struct {
    pthread_t thread;
    GtkWindow * window;
} t_ui;

void ui_set_prime_range(t_request request);
t_ui * ui_new(int argc, char ** argv);
void ui_run(t_ui * ui);
void ui_destroy(t_ui * ui);

#endif //PRIME_GEN_CLIENT_UI_H
