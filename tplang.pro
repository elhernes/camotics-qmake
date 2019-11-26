
TARGET=tplang

CONFIG+=object_parallel_to_source

V8=$${PWD}/../../javascript/ns-v8ios-runtime/v8
V8_LIB=$${V8}/out.gn/x64-release/lib
V8_LIBS=-ltorque_generated_initializers \
    -lv8_libbase \
    -lv8_base_without_compiler \
    -lv8_libplatform \
    -lv8_compiler \
    -lv8_libsampler \
    -lv8_init \
    -lv8_snapshot \
    -lv8_initializers

DEFINES = USING_CBANG
INCLUDEPATH = $${PWD}/config \
    $${PWD}/cbang/src \
    $${PWD}/cbang/src/boost \
    $${PWD}/CAMotics/src \
    $${V8}/include

OBJECTS_DIR=$${TARGET}

CHAKRA_LIB_DIR=$${PWD}/../camotics/ChakraCore/macos-mk//Release/lib

LIBS= -L$${OUT_PWD} -lgcode -ltplang -ldxf -lcbang -lCAMotics -lstl -lcairo -lclipper -L$${V8_LIB} $${V8_LIBS}

SOURCES += $${PWD}/CAMotics/src/tplang.cpp

LIBS += -framework IOKit
LIBS += -framework CoreFoundation
