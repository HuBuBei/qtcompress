CONFIG += testcase
TARGET = tst_qzip
QT += compress testlib
SOURCES += tst_qzip.cpp

wince* {
   addFiles.files = testdata
   addFiles.path = .
   DEPLOYMENT += addFiles
   DEFINES += SRCDIR=\\\".\\\"
} else {
   DEFINES += SRCDIR=\\\"$$PWD\\\"
}
