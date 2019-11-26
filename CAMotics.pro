
TARGET=CAMotics

CONFIG+=object_parallel_to_source

QT += widgets opengl network websockets

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

INCLUDEPATH = $${PWD}/config $${PWD}/cbang/src $${PWD}/cbang/src/boost $${PWD}/CAMotics/src $${V8}/include
OBJECTS_DIR=$${TARGET}

LIBS= -L$${OUT_PWD} -lgcode -ltplang -ldxf -lcbang -lCAMotics -lCAMoticsGUI -lstl -lcairo -lclipper -L$${V8_LIB} $${V8_LIBS}

SOURCES += $${PWD}/CAMotics/src/camotics.cpp
SOURCES += $${PWD}/config/camotics/resources.cpp
SOURCES += $${PWD}/config/camotics/resources.data/data2.cpp
SOURCES += $${PWD}/config/camotics/resources.data/data3.cpp

ICON = $${PWD}/CAMotics/osx/camotics.icns
#QMAKE_INFO_PLIST = $${PWD}/CAMotics/osx/pkg.plist


RESOURCE_FILES.files = $$ICON
QMAKE_BUNDLE_DATA += RESOURCE_FILES

RESOURCES += $${PWD}/CAMotics/qt/camotics.qrc

VERSION = 1.2.1

ios {
    D=SharedSupport/
}
macx {
    D=Contents/SharedSupport/
}

tpl_lib.files = $${PWD}/CAMotics/tpl_lib
#tpl_lib.path = $${D}

machines.files = CAMotics/machines
machines.path = $${D}

examples.files = CAMotics/examples
examples.path = $${D}

macx {
    QMAKE_BUNDLE_DATA += tpl_lib machines examples
}

ios {
    QMAKE_BUNDLE_DATA += tpl_lib machines examples
    plistupdate.commands = /usr/libexec/PlistBuddy -c \"Set :CFBundleShortVersionString $$VERSION\" $$QMAKE_INFO_PLIST
    QMAKE_EXTRA_TARGETS += plistupdate
    PRE_TARGETDEPS += plistupdate
}
