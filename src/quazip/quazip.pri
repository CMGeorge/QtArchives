
#    OBJECTS_DIR = $$OUT_PWD/.quazip_obj
#    OBJECTS_DIR = $$OUT_PWD/.quazip_moc
    INCLUDEPATH += $$PWD
    DEPENDPATH += $$PWD
    CONFIG+=QUAZIP
#!clang
#!android|!clang
windows{
    HEADERS += $$ZLIB_PWD/zlib.h
    SOURCES += $$ZLIB_PWD/adler32.c \
                $$ZLIB_PWD/crc32.c \
#                $$externals_dir/zlib-1.2.8/gzopen.c \
                $$ZLIB_PWD/gzclose.c \
                $$ZLIB_PWD/gzread.c \
                $$ZLIB_PWD/gzwrite.c \
                $$ZLIB_PWD/gzlib.c \
                $$ZLIB_PWD/inflate.c \
                $$ZLIB_PWD/inftrees.c \
                $$ZLIB_PWD/infback.c \
                $$ZLIB_PWD/inffast.c \
                $$ZLIB_PWD/deflate.c \
                $$ZLIB_PWD/zutil.c \
                $$ZLIB_PWD/trees.c
}
#    !contains(HEADERS,.*crc32.h){
#        HEADERS+=$$externals_dir/zlib-1.2.8/crc32.h
#        SOURCES+=$$externals_dir/zlib-1.2.8/crc32.c
#        warning("QUAZIP INCLUDE CRC32")
#    }else{
#        warning("QUAZIP CRC32 Exists")
#    }
    HEADERS += \
            $$PWD/crypt.h \
            $$PWD/ioapi.h \
            $$PWD/JlCompress.h \
            $$PWD/quaadler32.h \
            $$PWD/quachecksum32.h \
            $$PWD/quacrc32.h \
            $$PWD/quagzipfile.h \
            $$PWD/quaziodevice.h \
            $$PWD/quazipdir.h \
            $$PWD/quazipfile.h \
            $$PWD/quazipfileinfo.h \
            $$PWD/quazip_global.h \
            $$PWD/quazip.h \
            $$PWD/quazipnewinfo.h \
            $$PWD/unzip.h \
            $$PWD/zip.h

    SOURCES += $$PWD/qioapi.cpp \
               $$PWD/JlCompress.cpp \
               $$PWD/quaadler32.cpp \
               $$PWD/quacrc32.cpp \
               $$PWD/quagzipfile.cpp \
               $$PWD/quaziodevice.cpp \
               $$PWD/quazip.cpp \
               $$PWD/quazipdir.cpp \
               $$PWD/quazipfile.cpp \
               $$PWD/quazipfileinfo.cpp \
               $$PWD/quazipnewinfo.cpp \
               $$PWD/unzip.c \
               $$PWD/zip.c

DISTFILES += \
    $$PWD/mac/mac.pri \
    $$PWD/windows/windows.pri
