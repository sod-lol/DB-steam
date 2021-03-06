QT       += core gui quickwidgets sql

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

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
    copyablewidget.cpp \
    login.cpp \
    main.cpp \
    mainpresenter.cpp \
    widgethovernotify.cpp

HEADERS += \
    copyablewidget.h \
    login.h \
    mainpresenter.h \
    widgethovernotify.h

FORMS += \
    login.ui \
    mainview.ui


# Default rules for deployment.
qnx: target.path = /tmp/$${TARGET}/bin
else: unix:!android: target.path = /opt/$${TARGET}/bin
!isEmpty(target.path): INSTALLS += target


win32:CONFIG(release, debug|release): LIBS += -L$$OUT_PWD/../ViewsAndPresenters/Store/ -lStore
else:win32:CONFIG(debug, debug|release): LIBS += -L$$OUT_PWD/../ViewsAndPresenters/Store/ -lStore


INCLUDEPATH += $$PWD/../ViewsAndPresenters/Store
DEPENDPATH += $$PWD/../ViewsAndPresenters/Store

win32:CONFIG(release, debug|release): LIBS += -L$$OUT_PWD/../ViewsAndPresenters/Profile/ -lProfile
else:win32:CONFIG(debug, debug|release): LIBS += -L$$OUT_PWD/../ViewsAndPresenters/Profile/ -lProfile

INCLUDEPATH += $$PWD/../ViewsAndPresenters/Profile
DEPENDPATH += $$PWD/../ViewsAndPresenters/Profile

win32:CONFIG(release, debug|release): LIBS += -L$$OUT_PWD/../ViewsAndPresenters/Friends/ -lFriends
else:win32:CONFIG(debug, debug|release): LIBS += -L$$OUT_PWD/../ViewsAndPresenters/Friends/ -lFriends

INCLUDEPATH += $$PWD/../ViewsAndPresenters/Friends
DEPENDPATH += $$PWD/../ViewsAndPresenters/Friends

win32:CONFIG(release, debug|release): LIBS += -L$$OUT_PWD/../ViewsAndPresenters/Hub/ -lHub
else:win32:CONFIG(debug, debug|release): LIBS += -L$$OUT_PWD/../ViewsAndPresenters/Hub/ -lHub

INCLUDEPATH += $$PWD/../ViewsAndPresenters/Hub
DEPENDPATH += $$PWD/../ViewsAndPresenters/Hub

win32:CONFIG(release, debug|release): LIBS += -L$$OUT_PWD/../ViewsAndPresenters/Library/ -lLibrary
else:win32:CONFIG(debug, debug|release): LIBS += -L$$OUT_PWD/../ViewsAndPresenters/Library/ -lLibrary

INCLUDEPATH += $$PWD/../ViewsAndPresenters/Library
DEPENDPATH += $$PWD/../ViewsAndPresenters/Library

win32:CONFIG(release, debug|release): LIBS += -L$$OUT_PWD/../DataBase/ -lDataBase
else:win32:CONFIG(debug, debug|release): LIBS += -L$$OUT_PWD/../DataBase/ -lDataBase

INCLUDEPATH += $$PWD/../DataBase
DEPENDPATH += $$PWD/../DataBase

win32:CONFIG(release, debug|release): LIBS += -L$$OUT_PWD/../ViewsAndPresenters/Game/ -lGame
else:win32:CONFIG(debug, debug|release): LIBS += -L$$OUT_PWD/../ViewsAndPresenters/Game/ -lGame

INCLUDEPATH += $$PWD/../ViewsAndPresenters/Game
DEPENDPATH += $$PWD/../ViewsAndPresenters/Game
