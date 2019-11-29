
TARGET=tplang
CONFIG-=app_bundle

include(common.pri)

INCLUDEPATH += \
    $${PWD}/config \
    $${V8}/include

LIBS= -L$${OUT_PWD} -lgcode -ltplang -ldxf -lcbang -lCAMotics -lstl -lcairo -lclipper -L$${V8_LIB} $${V8_LIBS}

SOURCES += $${PWD}/CAMotics/src/tplang.cpp

LIBS += -framework IOKit
LIBS += -framework CoreFoundation
