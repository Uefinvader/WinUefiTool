CONFIG+= release static rtti no_plugin_manifest directwrite qpa
host_build {
    QT_ARCH = i386
    QT_TARGET_ARCH = i386
} else {
    QT_ARCH = i386
}
QT_CONFIG += minimal-config small-config medium-config large-config full-config release c++11 c++14 static zlib gif jpeg png freetype harfbuzz accessibility opengl ssl openssl-linked dbus audio-backend no-qml-debug directwrite native-gestures qpa iconv concurrent
#versioning 
QT_VERSION = 5.6.3
QT_MAJOR_VERSION = 5
QT_MINOR_VERSION = 6
QT_PATCH_VERSION = 3

QT_EDITION = OpenSource
QT_DEFAULT_QPA_PLUGIN = qwindows
QT_GCC_MAJOR_VERSION = 4
QT_GCC_MINOR_VERSION = 9
QT_GCC_PATCH_VERSION = 2

