
TARGET=stl

TEMPLATE=lib
CONFIG+=staticlib
DEFINES = USING_CBANG
INCLUDEPATH = $${PWD}/cbang/src $${PWD}/cbang/src/boost $${PWD}/CAMotics/src
OBJECTS_DIR=lib$${TARGET}

SOURCES+= $${PWD}/CAMotics/src/stl/Sink.cpp
SOURCES+= $${PWD}/CAMotics/src/stl/Source.cpp
SOURCES+= $${PWD}/CAMotics/src/stl/Writer.cpp
SOURCES+= $${PWD}/CAMotics/src/stl/Reader.cpp


