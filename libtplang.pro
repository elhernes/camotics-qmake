
TARGET=tplang

TEMPLATE=lib
CONFIG+=staticlib
DEFINES = USING_CBANG
INCLUDEPATH = $${PWD}/cbang/src $${PWD}/cbang/src/boost $${PWD}/CAMotics/src
OBJECTS_DIR=lib$${TARGET}

SOURCES += $${PWD}/CAMotics/src/tplang/MatrixModule.cpp
SOURCES += $${PWD}/CAMotics/src/tplang/GCodeModule.cpp
SOURCES += $${PWD}/CAMotics/src/tplang/TPLContext.cpp
SOURCES += $${PWD}/CAMotics/src/tplang/ClipperModule.cpp
SOURCES += $${PWD}/CAMotics/src/tplang/STLModule.cpp
SOURCES += $${PWD}/CAMotics/src/tplang/Interpreter.cpp
SOURCES += $${PWD}/CAMotics/src/tplang/DXFModule.cpp
