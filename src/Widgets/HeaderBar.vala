public class LPS.HeaderBar : Gtk.HeaderBar {
    public LPS.Window main_window { get; construct; }

    public HeaderBar (LPS.Window window) {
        Object (
            main_window: window
        );
    }

    construct {
        show_close_button = true;

        var add_map_button = new Gtk.Button.with_label ("Add map");
        add_map_button.get_style_context ().add_class ("suggested-action");
        add_map_button.valign = Gtk.Align.CENTER;

        pack_start (add_map_button);

        var menu_button = new Gtk.Button.from_icon_name ("open-menu", Gtk.IconSize.LARGE_TOOLBAR);
        menu_button.valign = Gtk.Align.CENTER;

        set_title ("local-positioning-system");

        pack_end (menu_button);
    }
}