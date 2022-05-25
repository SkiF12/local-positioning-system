public class LPS.MainWindow : Gtk.ApplicationWindow {
	
	private GLib.Settings settings;

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

	 	var headerbar = new LPS.HeaderBar (this);
	 	set_titlebar (headerbar);

	 	show_all ();
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