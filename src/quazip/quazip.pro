
LIB_NAME=quazip
TARGET = $$LIB_NAME
#$$qt5LibraryTarget($$LIB_NAME)
QT -= gui
VERSION=1.0.0
#TEMPLATE = lib
CONFIG  *= qt warn_on
CONFIG  *= relative_qt_rpath
CONFIG  -= create_cmake
#DEFINES += QT_NO_CAST_TO_ASCII QT_NO_CAST_FROM_ASCII
!android{
#    CONFIG *= debug_and_release
#    CONFIG *= build_all
    CONFIG += lib_bundle
}else{
    CONFIG -= debug
    CONFIG *=release
}

PREFIX=$$[QT_INSTALL_PREFIX]
#CONFIG(debug, debug|release) {
#    DEBUG_OR_RELEASE = debug
#    android{
#        TARGET = $$join(TARGET,,,d)
#    }
#    ios{
#TARGET = $$join(TARGET,,,_debug)
#    }
##    }
#}else {
#    DEBUG_OR_RELEASE = release
#}

#error("Install lib to:" $$[QT_INSTALL_HEADERS])
windows{
    ZLIB_PWD = $$PWD/zlib/
    INCLUDEPATH += $$ZLIB_PWD/
    DEPENDPATH += $$ZLIB_PWD/
#    warning ("Inscluded Path: " $$ZLIB_PWD/zlib-1.2.8/);
}else{
    LIBS += -lz
}

# This one handles dllimport/dllexport directives.
DEFINES += QUAZIP_BUILD

## You'll need to define this one manually if using a build system other
## than qmake or using QuaZIP sources directly in your project.
CONFIG(staticlib): DEFINES += QUAZIP_STATIC

include($$PWD/quazip.pri)

#win32 {
#    headers.path= [$$plugins_dir]/include/quazip
#    headers.files=$$HEADERS
#    target.path=$$PREFIX/lib
#    INSTALLS += headers target
#    # workaround for qdatetime.h macro bug
#    DEFINES += NOMINMAX
#}

#include(mac/mac.pri)
#include(windows/windows.pri)
#win32 {
#    headers.path=$$PREFIX/include/quazip
#    headers.files=$$HEADERS
#    target.path=$$PREFIX/lib
#    INSTALLS += headers target
#    # workaround for qdatetime.h macro bug
#    DEFINES += NOMINMAX
#}
target.path = $$[QT_INSTALL_LIBS]
#INSTALLS += target
CONFIG *= install_ok  # Do not cargo-cult this!
CONFIG *= install
load(qt_module)
