
TARGET=CAMotics

CONFIG+=object_parallel_to_source

QT += widgets opengl network websockets

DEFINES = USING_CBANG
INCLUDEPATH = $${PWD}/config $${PWD}/cbang/src $${PWD}/cbang/src/boost $${PWD}/CAMotics/src
OBJECTS_DIR=$${TARGET}

LIBS= -L$${OUT_PWD} -lgcode -ltplang -ldxf -lcbang -lCAMotics -lCAMoticsGUI -lstl -lcairo -L$${PWD}/../camotics/nodejs-mobile/out/Release -lChakraCoreStatic

SOURCES += $${PWD}/CAMotics/src/camotics.cpp

VERSION = 1.2.1

ios {
    plistupdate.commands = /usr/libexec/PlistBuddy -c \"Set :CFBundleShortVersionString $$VERSION\" $$QMAKE_INFO_PLIST
    QMAKE_EXTRA_TARGETS += plistupdate
    PRE_TARGETDEPS += plistupdate
}
