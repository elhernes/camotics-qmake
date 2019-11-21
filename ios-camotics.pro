TEMPLATE=subdirs

libs+= libclipper.pro
libs+= libdxf.pro
libs+= libstl.pro
libs+= libgcode.pro
libs+= libtplang.pro
libs+= libcairo.pro
libs+= libcbang.pro

libs+= libCAMotics.pro
libs+= libCAMoticsGUI.pro

# libs+= libChakraCore.pro

SUBDIRS += $${libs}

SUBDIRS+= tplang.pro
SUBDIRS+= CAMotics.pro

tplang.pro.depends = $${libs}
CAMotics.pro.depends = $${libs}
