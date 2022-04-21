
# This one handles dllimport/dllexport directives.
DEFINES += QUAZIP_BUILD


LIB_NAME=quazip
TARGET = $$LIB_NAME
QT -= gui
QT += core core5compat
VERSION=1.0.0
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
}else:mac{
#    ZLIB_PWD = $$PWD/m_zlib/
#    INCLUDEPATH += $$ZLIB_PWD/
#    DEPENDPATH += $$ZLIB_PWD/
    LIBS += -lz
}else{
    LIBS += -lz
}



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

load(qt_module)
