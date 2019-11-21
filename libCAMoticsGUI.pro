
TARGET=CAMoticsGUI

QT += widgets opengl network

TEMPLATE=lib
CONFIG+=staticlib
DEFINES = USING_CBANG CAMOTICS_GUI
INCLUDEPATH = \
    $${PWD}/cbang/src \
    $${PWD}/cbang/src/boost \
    $${PWD}/CAMotics/src
    
OBJECTS_DIR=lib$${TARGET}
UI_DIR=lib$${TARGET}
MOC_DIR=lib$${TARGET}

FORMS += $${PWD}/CAMotics/qt/new_dialog.ui
FORMS += $${PWD}/CAMotics/qt/donate_dialog.ui
FORMS += $${PWD}/CAMotics/qt/new_project_dialog.ui
FORMS += $${PWD}/CAMotics/qt/export_dialog.ui
FORMS += $${PWD}/CAMotics/qt/upload_dialog.ui
FORMS += $${PWD}/CAMotics/qt/cam_dialog.ui
FORMS += $${PWD}/CAMotics/qt/tool_dialog.ui
FORMS += $${PWD}/CAMotics/qt/cam_layer_dialog.ui
FORMS += $${PWD}/CAMotics/qt/camotics.ui
FORMS += $${PWD}/CAMotics/qt/settings_dialog.ui
FORMS += $${PWD}/CAMotics/qt/about_dialog.ui
FORMS += $${PWD}/CAMotics/qt/connect_dialog.ui
FORMS += $${PWD}/CAMotics/qt/find_dialog.ui

HEADERS += CAMotics/src/camotics/qt/DonateDialog.h
HEADERS += CAMotics/src/camotics/qt/NewDialog.h
HEADERS += CAMotics/src/camotics/qt/ColorComponent.h
HEADERS += CAMotics/src/camotics/qt/TPLHighlighter.h
HEADERS += CAMotics/src/camotics/qt/UploadDialog.h
HEADERS += CAMotics/src/camotics/qt/FileTabManager.h
HEADERS += CAMotics/src/camotics/qt/QApplication.h
HEADERS += CAMotics/src/camotics/qt/FindDialog.h
HEADERS += CAMotics/src/camotics/qt/Highlighter.h
HEADERS += CAMotics/src/camotics/qt/NCEdit.h
HEADERS += CAMotics/src/camotics/qt/AboutDialog.h
HEADERS += CAMotics/src/camotics/qt/CAMLayerDialog.h
HEADERS += CAMotics/src/camotics/qt/QtWin.h
HEADERS += CAMotics/src/camotics/qt/QTextDevice.h
HEADERS += CAMotics/src/camotics/qt/GLView.h
HEADERS += CAMotics/src/camotics/qt/Settings.h
HEADERS += CAMotics/src/camotics/qt/ToolGraphicsItem.h
HEADERS += CAMotics/src/camotics/qt/ClickWidget.h
HEADERS += CAMotics/src/camotics/qt/BBCtrlAPI.h
HEADERS += CAMotics/src/camotics/qt/ToolScene.h
HEADERS += CAMotics/src/camotics/qt/CAMDialog.h
HEADERS += CAMotics/src/camotics/qt/FileDialog.h
HEADERS += CAMotics/src/camotics/qt/SettingsDialog.h
HEADERS += CAMotics/src/camotics/qt/NewProjectDialog.h
HEADERS += CAMotics/src/camotics/qt/SidebarWidget.h
HEADERS += CAMotics/src/camotics/qt/ProjectModel.h
HEADERS += CAMotics/src/camotics/qt/QtApp.h
HEADERS += CAMotics/src/camotics/qt/ExportDialog.h
HEADERS += CAMotics/src/camotics/qt/ConsoleWriter.h
HEADERS += CAMotics/src/camotics/qt/GCodeHighlighter.h
HEADERS += CAMotics/src/camotics/qt/ConnectDialog.h
HEADERS += CAMotics/src/camotics/qt/ToolDialog.h

SOURCES += $${PWD}/CAMotics/src/camotics/machine/MachineModel.cpp
SOURCES += $${PWD}/CAMotics/src/camotics/machine/MachinePart.cpp

SOURCES += $${PWD}/CAMotics/src/camotics/qt/NCEdit.cpp
SOURCES += $${PWD}/CAMotics/src/camotics/qt/ToolScene.cpp
SOURCES += $${PWD}/CAMotics/src/camotics/qt/NewProjectDialog.cpp
SOURCES += $${PWD}/CAMotics/src/camotics/qt/QtWin.cpp
SOURCES += $${PWD}/CAMotics/src/camotics/qt/ToolGraphicsItem.cpp
SOURCES += $${PWD}/CAMotics/src/camotics/qt/GCodeHighlighter.cpp
SOURCES += $${PWD}/CAMotics/src/camotics/qt/TPLHighlighter.cpp
SOURCES += $${PWD}/CAMotics/src/camotics/qt/ConnectDialog.cpp
SOURCES += $${PWD}/CAMotics/src/camotics/qt/QtApp.cpp
SOURCES += $${PWD}/CAMotics/src/camotics/qt/CAMLayerDialog.cpp
SOURCES += $${PWD}/CAMotics/src/camotics/qt/CAMDialog.cpp
SOURCES += $${PWD}/CAMotics/src/camotics/qt/SidebarWidget.cpp
SOURCES += $${PWD}/CAMotics/src/camotics/qt/GLView.cpp
SOURCES += $${PWD}/CAMotics/src/camotics/qt/NewDialog.cpp
SOURCES += $${PWD}/CAMotics/src/camotics/qt/FileDialog.cpp
SOURCES += $${PWD}/CAMotics/src/camotics/qt/FileTabManager.cpp
SOURCES += $${PWD}/CAMotics/src/camotics/qt/ConsoleWriter.cpp
SOURCES += $${PWD}/CAMotics/src/camotics/qt/DonateDialog.cpp
SOURCES += $${PWD}/CAMotics/src/camotics/qt/FindDialog.cpp
SOURCES += $${PWD}/CAMotics/src/camotics/qt/Settings.cpp
SOURCES += $${PWD}/CAMotics/src/camotics/qt/ProjectModel.cpp
SOURCES += $${PWD}/CAMotics/src/camotics/qt/QApplication.cpp
SOURCES += $${PWD}/CAMotics/src/camotics/qt/ClickWidget.cpp
SOURCES += $${PWD}/CAMotics/src/camotics/qt/ExportDialog.cpp
SOURCES += $${PWD}/CAMotics/src/camotics/qt/SettingsDialog.cpp
SOURCES += $${PWD}/CAMotics/src/camotics/qt/ToolDialog.cpp
SOURCES += $${PWD}/CAMotics/src/camotics/qt/UploadDialog.cpp
SOURCES += $${PWD}/CAMotics/src/camotics/qt/Highlighter.cpp
SOURCES += $${PWD}/CAMotics/src/camotics/qt/BBCtrlAPI.cpp
SOURCES += $${PWD}/CAMotics/src/camotics/qt/AboutDialog.cpp

SOURCES += $${PWD}/CAMotics/src/camotics/value/ValueGroup.cpp
SOURCES += $${PWD}/CAMotics/src/camotics/value/ValueSet.cpp

SOURCES += $${PWD}/CAMotics/src/camotics/view/View.cpp
SOURCES += $${PWD}/CAMotics/src/camotics/view/BoundsView.cpp
SOURCES += $${PWD}/CAMotics/src/camotics/view/Color.cpp
SOURCES += $${PWD}/CAMotics/src/camotics/view/ToolView.cpp
SOURCES += $${PWD}/CAMotics/src/camotics/view/ToolPathView.cpp
SOURCES += $${PWD}/CAMotics/src/camotics/view/CuboidView.cpp
SOURCES += $${PWD}/CAMotics/src/camotics/view/Tool2DView.cpp
SOURCES += $${PWD}/CAMotics/src/camotics/view/GL.cpp
SOURCES += $${PWD}/CAMotics/src/camotics/view/ViewPort.cpp
SOURCES += $${PWD}/CAMotics/src/camotics/view/GLProgram.cpp
SOURCES += $${PWD}/CAMotics/src/camotics/view/GLUniform.cpp
SOURCES += $${PWD}/CAMotics/src/camotics/view/GLShader.cpp
