INCLUDEPATH += $$PWD/mspack
MSPACK_HEADERS += \
    $$PWD/cab.h \
    $$PWD/chm.h \
    $$PWD/crc32.h \
    $$PWD/des.h \
    $$PWD/hlp.h \
    $$PWD/kwaj.h \
    $$PWD/lit.h \
    $$PWD/lzss.h \
    $$PWD/lzx.h \
    $$PWD/mspack.h \
    $$PWD/mszip.h \
    $$PWD/oab.h \
    $$PWD/qtm.h \
    $$PWD/readbits.h \
    $$PWD/readhuff.h \
    $$PWD/sha.h \
    $$PWD/system.h \
    $$PWD/szdd.h
#\
#    $$PWD/msvc/config.h

SOURCES += \
    $$PWD/cabc.c \
    $$PWD/cabd.c \
    $$PWD/chmc.c \
    $$PWD/chmd.c \
    $$PWD/crc32.c \
    $$PWD/hlpc.c \
    $$PWD/hlpd.c \
    $$PWD/kwajc.c \
    $$PWD/kwajd.c \
    $$PWD/litc.c \
    $$PWD/litd.c \
    $$PWD/lzssd.c \
    $$PWD/lzxc.c \
    $$PWD/lzxd.c \
    $$PWD/mszipc.c \
    $$PWD/mszipd.c \
    $$PWD/oabc.c \
    $$PWD/oabd.c \
    $$PWD/qtmc.c \
    $$PWD/qtmd.c \
    $$PWD/system.c \
    $$PWD/szddc.c \
    $$PWD/szddd.c

mac{
#    INCLUDEPATH += "$$PWD/osx/"
#    HEADERS += $$PWD/osx/config.h
}
msvc{
#    DEFINES += HAVE_CONFIG_H
#    INCLUDEPATH += "$$PWD/msvc/"
#    HEADERS += $$PWD/msvc/config.h
#    warning($$PWD/msvc/config.h)
}
