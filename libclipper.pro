
TARGET=clipper

TEMPLATE=lib
CONFIG+=staticlib
DEFINES = USING_CBANG
INCLUDEPATH = $${PWD}/cbang/src $${PWD}/cbang/src/boost $${PWD}/CAMotics/src
OBJECTS_DIR=lib$${TARGET}

SOURCES+= $${PWD}/CAMotics/src/clipper/IntersectNode.cpp
SOURCES+= $${PWD}/CAMotics/src/clipper/ClipperBase.cpp
SOURCES+= $${PWD}/CAMotics/src/clipper/Polygon.cpp
SOURCES+= $${PWD}/CAMotics/src/clipper/Polygons.cpp
SOURCES+= $${PWD}/CAMotics/src/clipper/TEdge.cpp
SOURCES+= $${PWD}/CAMotics/src/clipper/IntPoint.cpp
SOURCES+= $${PWD}/CAMotics/src/clipper/PolyTree.cpp
SOURCES+= $${PWD}/CAMotics/src/clipper/Clipper.cpp
SOURCES+= $${PWD}/CAMotics/src/clipper/OutPt.cpp
SOURCES+= $${PWD}/CAMotics/src/clipper/OutRec.cpp
SOURCES+= $${PWD}/CAMotics/src/clipper/PolyNode.cpp
SOURCES+= $${PWD}/CAMotics/src/clipper/OffsetBuilder.cpp
SOURCES+= $${PWD}/CAMotics/src/clipper/Int128.cpp

