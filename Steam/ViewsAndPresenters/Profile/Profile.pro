QT += widgets gui sql quickwidgets

TEMPLATE = lib
DEFINES += PROFILE_LIBRARY

CONFIG += c++11

# The following define makes your compiler emit warnings if you use
# any Qt feature that has been marked deprecated (the exact warnings
# depend on your compiler). Please consult the documentation of the
# deprecated API in order to know how to port your code away from it.
DEFINES += QT_DEPRECATED_WARNINGS

# You can also make your code fail to compile if it uses deprecated APIs.
# In order to do so, uncomment the following line.
# You can also select to disable deprecated APIs only up to a certain version of Qt.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0

SOURCES += \
    friendcard.cpp \
    gamecard.cpp \
    profile.cpp \
    ../../Steam/copyablewidget.cpp

HEADERS += \
    Profile_global.h \
    friendcard.h \
    gamecard.h \
    profile.h \
    ../../Steam/copyablewidget.h

# Default rules for deployment.
unix {
    target.path = /usr/lib
}
!isEmpty(target.path): INSTALLS += target

FORMS += \
    profile.ui

win32:CONFIG(release, debug|release): LIBS += -L$$OUT_PWD/../../DataBase/ -lDataBase
else:win32:CONFIG(debug, debug|release): LIBS += -L$$OUT_PWD/../../DataBase/ -lDataBase
else:unix: LIBS += -L$$OUT_PWD/../../DataBase/ -lDataBase

INCLUDEPATH += $$PWD/../../DataBase
DEPENDPATH += $$PWD/../../DataBase

win32:CONFIG(release, debug|release): LIBS += -L$$OUT_PWD/../Game/ -lGame
else:win32:CONFIG(debug, debug|release): LIBS += -L$$OUT_PWD/../Game/ -lGame

INCLUDEPATH += $$PWD/../Game
DEPENDPATH += $$PWD/../Game

win32:CONFIG(release, debug|release): LIBS += -L$$OUT_PWD/../Hub/ -lHub
else:win32:CONFIG(debug, debug|release): LIBS += -L$$OUT_PWD/../Hub/ -lHub

INCLUDEPATH += $$PWD/../Hub
DEPENDPATH += $$PWD/../Hub
