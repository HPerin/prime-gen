//
// Created by lucas on 11/08/15.
//

#include <stdlib.h>
#include <ui.h>
#include <client.h>
#include <request.h>
#include "ui.h"

t_client * client;
pthread_t client_thread;
GtkLabel * prime_range;
GtkBox * box;

void button_connect_clicked(GtkButton * connect_button) {
    pthread_create(&client_thread, NULL, (void *(*)(void *)) client_run, client);
    gtk_container_remove((GtkContainer *) box, (GtkWidget *) connect_button);
}

void button_exit_clicked(t_ui * ui) {
    ui_destroy(ui);
}

void ui_set_prime_range(t_request request) {
    char range[500];
    sprintf(range, "%lu - %lu", request.first, request.last);
    gtk_label_set_text(prime_range, range);
}

t_ui *ui_new(int argc, char ** argv) {
    t_ui * ui;

    gtk_init(&argc, &argv);

    client = client_new();

    ui = malloc(sizeof(t_ui));
    ui->window = (GtkWindow *) gtk_window_new(GTK_WINDOW_TOPLEVEL);
    gtk_window_set_title(ui->window, "Prime Calculator");
    gtk_window_set_default_size(ui->window, 300, 150);
    g_signal_connect(ui->window, "destroy", button_exit_clicked, ui);

    GtkButton *connect_button = (GtkButton *) gtk_button_new();
    gtk_button_set_label(connect_button, "Connect!");
    g_signal_connect(connect_button, "clicked", button_connect_clicked, connect_button);

    GtkButton * exit_button = (GtkButton *) gtk_button_new();
    gtk_button_set_label(exit_button, "Exit");
    g_signal_connect(exit_button, "clicked", button_exit_clicked, ui);

    prime_range = (GtkLabel *) gtk_label_new("");

    box = (GtkBox *) gtk_box_new(GTK_ORIENTATION_VERTICAL, 10);
    gtk_container_add((GtkContainer *) ui->window, (GtkWidget *) box);
    gtk_container_add((GtkContainer *) box, (GtkWidget *) connect_button);
    gtk_container_add((GtkContainer *) box, (GtkWidget *) exit_button);
    gtk_container_add((GtkContainer *) box, (GtkWidget *) prime_range);

    return ui;
}

void ui_run(t_ui * ui) {
    gtk_widget_show_all((GtkWidget *) ui->window);
    gtk_main();
}

void ui_destroy(t_ui *ui) {
    client_destroy(client);
    gtk_main_quit();
}
