#-------------------------------------------------
#
# Project created by QtCreator 2012-07-27T09:50:11
#
#-------------------------------------------------

QT       += core

QT       -= gui

TARGET = Capture
CONFIG   += console
CONFIG   -= app_bundle

INCLUDEPATH += ../../../include

TEMPLATE = app

unix{
    CONFIG += link_pkgconfig
    PKGCONFIG += opencv
}

SOURCES += main.cpp \
    ../../../include/DeckLinkAPIDispatch.cpp \
    cameradecklink.cpp

HEADERS += \
    DeckLinkAPI.h \
    cameradecklink.h
