public class LPS.HeaderBar : Gtk.HeaderBar {
    public LPS.MainWindow main_window { get; construct; }

    private Gtk.Button add_map_button;
    private Gtk.Button menu_button;
    private Gtk.Button save_button;

    public HeaderBar (LPS.MainWindow window) {
        Object (
            main_window: window
        );
    }

    construct {
        show_close_button = true;

        // buttons

        add_map_button = new Gtk.Button.from_icon_name ("document-open", Gtk.IconSize.LARGE_TOOLBAR);
        add_map_button.valign = Gtk.Align.CENTER;
        add_map_button.tooltip_text = "Load map";
        
        add_map_button.clicked.connect ( () => {
            load_map ();
        });

        pack_start (add_map_button);

        menu_button = new Gtk.Button.from_icon_name ("open-menu", Gtk.IconSize.LARGE_TOOLBAR);
        menu_button.valign = Gtk.Align.CENTER;
        menu_button.tooltip_text = "Preferences";

        menu_button.clicked.connect ( () => {
            open_preferences ();
        });

        pack_end (menu_button);

        save_button = new Gtk.Button.from_icon_name ("document-save", Gtk.IconSize.LARGE_TOOLBAR);
        save_button.valign = Gtk.Align.CENTER;
        save_button.tooltip_text = "Save";

        pack_start (save_button);

        save_button.clicked.connect ( () => {
            save_all ();
        });
        
        set_title ("local-positioning-system");
    }

    // event handlers
    private void load_map () {
        
    }

    private void open_preferences () {

    }

    private void save_all() {

    }
}