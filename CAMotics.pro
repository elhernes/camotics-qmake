
TARGET=CAMotics

include(common.pri)

QT += widgets opengl network websockets

INCLUDEPATH += $${PWD}/config

LIBS= -L$${OUT_PWD} -lgcode -ltplang -ldxf -lcbang -lCAMotics -lCAMoticsGUI -lstl -lcairo -lclipper

#INCLUDEPATH += $${V8_INC}
#LIBS+= -L$${V8_LIB} $${V8_LIBS}

#INCLUDEPATH += $${CHAKRA_INC}
LIBS+=$${CHAKRA_LIB}

LIBS += -framework IOKit
LIBS += -framework CoreFoundation

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
tpl_lib.path = 

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
