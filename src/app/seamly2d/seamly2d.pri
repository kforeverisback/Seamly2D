# Suport subdirectories. Just better project code tree.
include(dialogs/dialogs.pri)
include(xml/xml.pri)
include(core/core.pri)

# ADD TO EACH PATH $$PWD VARIABLE!!!!!!
# This need for corect working file translations.pro

# Some source files
SOURCES += \
        $$PWD/main.cpp \
        $$PWD/mainwindow.cpp \
        $$PWD/mainwindowsnogui.cpp
win32-msvc* {
    SOURCES += $$PWD/Thinfinity.VirtualUI.cpp
}

*msvc*:SOURCES += $$PWD/stable.cpp

# Some header files
HEADERS  += \
        $$PWD/mainwindow.h \
        $$PWD/options.h \
        $$PWD/stable.h \
        $$PWD/version.h \
        $$PWD/mainwindowsnogui.h
win32-msvc* {
    HEADERS += $$PWD/Thinfinity.VirtualUI.h
}
# Main forms
FORMS    += \
        $$PWD/mainwindow.ui
