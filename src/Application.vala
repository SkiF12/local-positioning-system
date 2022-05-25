public class Application : Gtk.Application {

	public Application () {
		Object (
			application_id: "com.github.SkiF12.local-positioning-system",
			flags: ApplicationFlags.FLAGS_NONE
		);
	}

	protected override void activate () {
		var main_window = new LPS.MainWindow (this);
		
		main_window.present ();
		add_window (main_window);

	}

	public static int main (string[] args) {
		var app = new Application ();
	
		return app.run (args);
	}
}