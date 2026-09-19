project('mplayer', 'vala', 'c')

gtk_dep = dependency('gtk4')
gstreamer_dep = dependency('gstreamer-1.0')

executable(
  'main',
  'main.vala',
  dependencies: [gtk_dep, gstreamer_dep],
)
