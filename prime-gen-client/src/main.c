#include <client.h>
#include <gtk/gtk.h>
#include <ui.h>

t_ui * ui;

int main(int argc, char ** argv) {
    ui = ui_new(argc, argv);
    ui_run(ui);

    return 0;
}