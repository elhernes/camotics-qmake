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

SUBDIRS += $${libs}

macx {
    SUBDIRS+= tplang.pro
    tplang.pro.depends = $${libs}
}

SUBDIRS+= CAMotics.pro

CAMotics.pro.depends = $${libs}
