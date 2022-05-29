public class PreferencesDialog : Gtk.Dialog {
    public PreferencesDialog (Gtk.Window parent) {
        Object (
            transient_for: parent,
            deletable: false,
            resizable: false
        );
        build_ui ();

        this.response.connect ((source, response_id) => {
            switch (response_id) {
                case Gtk.ResponseType.CLOSE:
                    destroy ();
                    break;
            }
        });
    }

    private void build_ui () {
        title = "Preferences";
        var content = get_content_area () as Gtk.Box;

        var grid = new Gtk.Grid ();
        grid.column_spacing = 12;
        grid.row_spacing = 12;
        grid.margin = 12;

        var prefer_dark_theme = new Gtk.Switch ();
        var show_tags = new Gtk.Switch ();

        grid.attach (new Gtk.Label ("Prefer dark theme"), 0, 0);
        grid.attach (prefer_dark_theme, 1, 0);
        grid.attach (new Gtk.Label ("Show tags on map"), 0, 1);
        grid.attach (show_tags, 1, 1);


        content.pack_start (grid, false, false, 0);

        add_button ("Close", Gtk.ResponseType.CLOSE);
        show_all ();
    }
}