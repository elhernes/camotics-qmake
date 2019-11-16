#!/bin/sh
##################################################
## file: github/camotics/CAMotics/qt_gen/gen.sh
##
## (C) Copyright Eric L. Hernes 2019
##
## /bin/sh script to do something
##
QT_DIR=${HOME}/Qt/5.12.5/ios
QT_BIN=${QT_DIR}/bin
moc=${QT_BIN}/moc
uic=${QT_BIN}/uic


moc_f="AboutDialog BBCtrlAPI CAMDialog CAMLayerDialog ConnectDialog ConsoleWriter \
     DonateDialog ExportDialog FileTabManager FindDialog GLView NCEdit ProjectModel \
     QtWin SettingsDialog ToolDialog UploadDialog"

uic_f="about_dialog cam_dialog cam_layer_dialog camotics \
       connect_dialog donate_dialog export_dialog find_dialog \
       new_dialog new_project_dialog settings_dialog tool_dialog \
       upload_dialog"

qt_src=../CAMotics/src/camotics/qt

for m in ${moc_f}; do
    ${moc} ${qt_src}/${m}.h > moc_${m}.cc
done

ui_src=../qt

for u in ${uic_f}; do
    ${uic} ${ui_src}/${u}.ui >ui_${u}.h
done
