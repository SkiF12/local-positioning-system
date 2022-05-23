public class Application : Gtk.Application {

	public Application () {
		Object (
			application_id: "com.github.SkiF12.local-positioning-system",
			flags: ApplicationFlags.FLAGS_NONE
		);
	}

	protected override void activate () {
		var window = new LPS.Window (this);

		add_window (window);
	}
}