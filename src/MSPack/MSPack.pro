LIB_NAME = MSPack
TARGET = $$LIB_NAME

QT += core
QT -= gui
CONFIG += c++11


#PREFIX=$$[QT_INSTALL_PREFIX]
include(MSPack.pri)
#target.path = $$PREFIX
#unix:!mac {
#    headers.path=$$PREFIX/include/quazip
#    headers.files=$$HEADERS
#    target.path=$$PREFIX/lib
#    INSTALLS += headers target

#        OBJECTS_DIR=.obj
#        MOC_DIR=.moc

#}else:
#include(mac/mac.pri)
#include(windows/windows.pri)
#win32 {
#    headers.path=$$PREFIX/include/MSPack
#    headers.files=$$HEADERS
#    target.path=$$PREFIX/lib
#    INSTALLS += headers target
#    # workaround for qdatetime.h macro bug
#    DEFINES += NOMINMAX
#}
#CONFIG *= install_ok  # Do not cargo-cult this!
#CONFIG *= install
HEADERS +=$$MSPACK_HEADERS
DISTFILES += \
    mac/mac.pri
load(qt_module)
