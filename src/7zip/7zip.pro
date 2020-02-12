QT = core
#TARGET = 7z
TEMPLATE = lib
#include(../../../installerfw.pri)
#INCLUDEPATH += . ..
CONFIG -= staticlib
CONFIG +=-std=c++11
#DESTDIR = $$IFW_LIB_PATH

include(7zip.pri)
win32:include($$PWD/win/win.pri) #7zip
unix:include($$PWD/unix/unix.pri) #p7zip

#target.path = $$[QT_INSTALL_LIBS]
#INSTALLS += target
#load(qt_build_config)
CONFIG += exceptions
#load(qt_module)
