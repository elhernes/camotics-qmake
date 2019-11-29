
TARGET=tplang
TEMPLATE=lib

include(common.pri)

SOURCES += $${PWD}/CAMotics/src/tplang/MatrixModule.cpp
SOURCES += $${PWD}/CAMotics/src/tplang/GCodeModule.cpp
SOURCES += $${PWD}/CAMotics/src/tplang/TPLContext.cpp
SOURCES += $${PWD}/CAMotics/src/tplang/ClipperModule.cpp
SOURCES += $${PWD}/CAMotics/src/tplang/STLModule.cpp
SOURCES += $${PWD}/CAMotics/src/tplang/Interpreter.cpp
SOURCES += $${PWD}/CAMotics/src/tplang/DXFModule.cpp
