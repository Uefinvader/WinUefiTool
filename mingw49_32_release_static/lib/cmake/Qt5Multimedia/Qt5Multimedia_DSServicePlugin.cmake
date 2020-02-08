
add_library(Qt5::DSServicePlugin MODULE IMPORTED)

_populate_Multimedia_plugin_properties(DSServicePlugin RELEASE "mediaservice/libdsengine.a")

list(APPEND Qt5Multimedia_PLUGINS Qt5::DSServicePlugin)
