
add_library(Qt5::QWindowsAudioPlugin MODULE IMPORTED)

_populate_Multimedia_plugin_properties(QWindowsAudioPlugin RELEASE "audio/libqtaudio_windows.a")

list(APPEND Qt5Multimedia_PLUGINS Qt5::QWindowsAudioPlugin)
