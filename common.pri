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
V8_INC=$${V8}/include

macx {
    V8_LIB=$${V8}/out.gn/x64.macx/lib
#    V8_LIB=$${V8}/out.gn/x64.macx_debug/obj
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
    -lv8_initializers

# for v8 v6.8
#V8_LIBS+= -lv8_base

V8_COMPILER_LIBS= -lv8_compiler \
    -lv8_base_without_compiler

V8_LIBS+=$${V8_COMPILER_LIBS}
macx {
    V8_LIBS+=-lv8_z
}


CHAKRA_INC=/Volumes/Users/eric/work/javascript/nodejs-mobile/deps/chakrashim/include
CHAKRA_LIB=/Volumes/Users/eric/work/javascript/nodejs-mobile/tools/ios-framework/bin/libChakraCoreStatic.a

#CHAKRA_INC=$${OUT_PWD}/ChakraCore/Release/include
#CHAKRA_LIB=$${OUT_PWD}/ChakraCore/Release/lib/libChakraCoreStatic.a
