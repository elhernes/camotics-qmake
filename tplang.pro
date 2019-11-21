
TARGET=tplang

CONFIG+=object_parallel_to_source

DEFINES = USING_CBANG
INCLUDEPATH = $${PWD}/config $${PWD}/cbang/src $${PWD}/cbang/src/boost $${PWD}/CAMotics/src
OBJECTS_DIR=$${TARGET}

CHAKRA_LIB_DIR=$${PWD}/../camotics/ChakraCore/macos-mk//Release/lib

LIBS= -L$${OUT_PWD} -lgcode -ltplang -ldxf -lcbang -lCAMotics -lstl -lcairo -lclipper -L$${CHAKRA_LIB_DIR} -lChakraCoreStatic

SOURCES += $${PWD}/CAMotics/src/tplang.cpp

LIBS += -framework IOKit
LIBS += -framework CoreFoundation
