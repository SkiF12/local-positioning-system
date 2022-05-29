public class EditDialog : Gtk.Dialog {
    public EditDialog (Gtk.Window parent) {
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
        title = "Info dialog";
        var content = get_content_area () as Gtk.Box;

        var grid = new Gtk.Grid ();
        grid.column_spacing = 12;
        grid.row_spacing = 12;
        grid.margin = 12;

        var id = new Gtk.Label ("Id");
        var id_entry = new Gtk.Entry ();
        
        var name = new Gtk.Label ("Name");
        var name_entry = new Gtk.Entry ();

        var category_id = new Gtk.Label ("category id");
        var category_id_entry = new Gtk.Entry ();

        var reader_id = new Gtk.Label ("reader id");
        var reader_id_entry = new Gtk.Entry ();

        grid.attach (id, 0, 0);
        grid.attach (id_entry, 1, 0);
        grid.attach (name, 0, 1);
        grid.attach (name_entry, 1, 1);
        grid.attach (category_id, 0, 2);
        grid.attach (category_id_entry, 1, 2);
        grid.attach (reader_id, 0, 3);
        grid.attach (reader_id_entry, 1, 3);

        content.pack_start (grid, false, false, 0);

        add_button ("Close", Gtk.ResponseType.CLOSE);
        show_all ();
    }
}