QT_BUILD_PARTS += libs tools
QT_SKIP_MODULES += qtwebengine qtwebview
QT_QCONFIG_PATH = 

host_build {
    QT_CPU_FEATURES.i386 = 
} else {
    QT_CPU_FEATURES.i386 = 
}
QT_COORD_TYPE += double
CONFIG += precompile_header pcre release sse2 sse3 ssse3 sse4_1 sse4_2 avx avx2 largefile ltcg
QT_COMPILER_STDCXX = 199711
EXTRA_LIBS += -LC:/OpenSSL/openssl-1.0.2n_mingw492_32_static/lib
EXTRA_INCLUDEPATH += C:/OpenSSL/openssl-1.0.2n_mingw492_32_static/include
OPENSSL_LIBS=-llibssl -llibcrypto -lgdi32
sql-plugins    += odbc sqlite
styles         += windows fusion windowsxp windowsvista
