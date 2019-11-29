CONFIG+=object_parallel_to_source
CONFIG+=debug

contains(TEMPLATE, lib) {
    OBJECTS_DIR=_lib$${TARGET}
    UI_DIR=_lib$${TARGET}
    MOC_DIR=_lib$${TARGET}
    CONFIG+=staticlib
} else {
    OBJECTS_DIR=_$${TARGET}
    UI_DIR=_$${TARGET}
    MOC_DIR=_$${TARGET}
}

DEFINES+=USING_CBANG
CONFIG+=debug

INCLUDEPATH = $${PWD}/cbang/src $${PWD}/cbang/src/boost $${PWD}/CAMotics/src

V8=$${PWD}/v8
macx {
    V8_LIB=$${V8}/out.gn/x64.macx/lib
}
ios {
#    V8_LIB=$${V8}/out.gn/arm64.ios/lib
    V8_LIB=$${V8}/out.gn/x64.ios/lib
}
V8_LIBS=-ltorque_generated_initializers \
    -lv8_libbase \
    -lv8_libplatform \
    -lv8_libsampler \
    -lv8_init \
    -lv8_snapshot \
    -lv8_initializers \
    -lv8_base

V8_COMPILER_LIBS= -lv8_compiler \
    -lv8_base_without_compiler
