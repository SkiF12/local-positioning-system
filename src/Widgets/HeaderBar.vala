public class LPS.HeaderBar : Gtk.HeaderBar {
    public LPS.MainWindow main_window { get; construct; }

    public Gtk.Button load_map_button;
    public Gtk.Button menu_button;
    public Gtk.Button save_button;

    public HeaderBar (LPS.MainWindow window) {
        Object (
            main_window: window
        );
    }

    construct {
        show_close_button = true;

        // buttons

        load_map_button = new Gtk.Button.from_icon_name ("document-open", Gtk.IconSize.LARGE_TOOLBAR);
        load_map_button.valign = Gtk.Align.CENTER;
        load_map_button.tooltip_text = "Load map";
        
        pack_start (load_map_button);

        menu_button = new Gtk.Button.from_icon_name ("open-menu", Gtk.IconSize.LARGE_TOOLBAR);
        menu_button.valign = Gtk.Align.CENTER;
        menu_button.tooltip_text = "Preferences";

        pack_end (menu_button);

        save_button = new Gtk.Button.from_icon_name ("document-save", Gtk.IconSize.LARGE_TOOLBAR);
        save_button.valign = Gtk.Align.CENTER;
        save_button.tooltip_text = "Save";

        pack_start (save_button);
    
        set_title ("local-positioning-system");
    }
}