public class LPS.MainWindow : Gtk.ApplicationWindow {
	
	private LPS.HeaderBar headerbar;
	private GLib.Settings settings;
	private Granite.Dialog? preferences_dialog = null;
	private Gtk.Image map;
	private Gtk.Grid main_grid;

	public MainWindow (Application app) {
		Object (
			application: app
		);
	}

	construct {
	 	window_position = Gtk.WindowPosition.CENTER;
	 	set_default_size (800, 600);

	 	settings = new GLib.Settings ("com.github.SkiF12.local-positioning-system");

	 	move (settings.get_int ("pos-x"), settings.get_int ("pos-y"));
	 	resize (settings.get_int ("window-width"), settings.get_int ("window-height"));

	 	delete_event.connect (e => {
	 		return before_destroy ();
	 	});

	 	headerbar = new LPS.HeaderBar (this);
	 	set_titlebar (headerbar);

		headerbar.load_map_button.clicked.connect (load_map);
		headerbar.menu_button.clicked.connect (open_preferences);
		headerbar.save_button.clicked.connect (save_all);

		main_grid = new Gtk.Grid ();

		var gtk_settings = Gtk.Settings.get_default ();

		map = new Gtk.Image.from_file ("/home/flac/Pictures/HBRTDL7D1E8.jpg");

		main_grid.margin = 20;
		add (main_grid);

		main_grid.attach (map, 0, 0);

	 	show_all ();
	}

	private void load_map () {

	}

	private void save_all () {

	}

	private void open_preferences () {

	}


	// remembers the window state
	public bool before_destroy () {
		int width, height, x, y;

		get_size (out width, out height);
		get_position (out x, out y);

		settings.set_int ("pos-x", x);
		settings.set_int ("pos-y", y);
		settings.set_int ("window-width", width);
		settings.set_int ("window-height", height);

		return false;
	}
}