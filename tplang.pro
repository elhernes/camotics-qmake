
TARGET=tplang
CONFIG-=app_bundle

include(common.pri)

INCLUDEPATH += \
    $${PWD}/config

LIBS= -L$${OUT_PWD} -lgcode -ltplang -ldxf -lcbang -lCAMotics -lstl -lcairo -lclipper

#INCLUDEPATH += $${V8_INC}
#LIBS+= -L$${V8_LIB} $${V8_LIBS}

#INCLUDEPATH += $${CHAKRA}
LIBS+=$${CHAKRA_LIB}

SOURCES += $${PWD}/CAMotics/src/tplang.cpp

LIBS += -framework IOKit
LIBS += -framework CoreFoundation
