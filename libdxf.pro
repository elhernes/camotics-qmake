
TARGET=dxf

TEMPLATE=lib
CONFIG+=staticlib
DEFINES = USING_CBANG
INCLUDEPATH = $${PWD}/cbang/src $${PWD}/cbang/src/boost $${PWD}/CAMotics/src
OBJECTS_DIR=lib$${TARGET}

SOURCES+= CAMotics/src/dxf/Reader.cpp
SOURCES+= CAMotics/src/dxflib/dl_writer_ascii.cpp
SOURCES+= CAMotics/src/dxflib/dl_dxf.cpp


