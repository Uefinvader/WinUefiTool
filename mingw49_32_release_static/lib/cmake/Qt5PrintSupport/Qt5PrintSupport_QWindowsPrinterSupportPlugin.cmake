
add_library(Qt5::QWindowsPrinterSupportPlugin MODULE IMPORTED)

_populate_PrintSupport_plugin_properties(QWindowsPrinterSupportPlugin RELEASE "printsupport/libwindowsprintersupport.a")

list(APPEND Qt5PrintSupport_PLUGINS Qt5::QWindowsPrinterSupportPlugin)
