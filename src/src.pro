TEMPLATE = subdirs

SUBDIRS *= quazip

lessThan(QT_MAJOR_VERSION,6){
    SUBDIRS *=MSPack
}
	
