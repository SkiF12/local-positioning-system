executable(
	meson.project_name(),

	'Application.vala',
	'MainWindow.vala',
	'Widgets/HeaderBar.vala',
        'Widgets/PreferencesDialog.vala',
        'RFIDTag.vala',
        'RFIDReader.vala',
        'Instance.vala',
        'Category.vala',
        'InstanceCharacteristic.vala',
        'Utils.vala',

	dependencies: [
        dependency('clutter-gst-3.0'),
        dependency('clutter-gtk-1.0'),
        dependency('gdk-x11-3.0'),
        dependency('gee-0.8'),
        dependency('glib-2.0'),
        dependency('gobject-2.0'),
        dependency('granite'),
        dependency('gstreamer-1.0'),
        dependency('gstreamer-pbutils-1.0'),
        dependency('gstreamer-video-1.0'),
        dependency('gstreamer-tag-1.0'),
        dependency('gtk+-3.0', version: '>=3.22'),
        dependency('libhandy-1'),
	],

	install: true
)