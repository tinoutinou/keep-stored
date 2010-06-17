#############################################################################
# Makefile for building: keep-stored.app/Contents/MacOS/keep-stored
# Generated by qmake (2.01a) (Qt 4.6.2) on: jeu. juin 17 11:22:37 2010
# Project:  KeepStored.pro
# Template: app
# Command: /usr/bin/qmake -spec /usr/local/Qt4.6/mkspecs/macx-g++ -macx -o Makefile KeepStored.pro
#############################################################################

####### Compiler, tools and options

CC            = gcc
CXX           = g++
DEFINES       = -DQT_GUI_LIB -DQT_CORE_LIB -DQT_SHARED
CFLAGS        = -pipe -g -gdwarf-2 -Wall -W $(DEFINES)
CXXFLAGS      = -pipe -g -gdwarf-2 -Wall -W $(DEFINES)
INCPATH       = -I/usr/local/Qt4.6/mkspecs/macx-g++ -I. -I/Library/Frameworks/QtCore.framework/Versions/4/Headers -I/usr/include/QtCore -I/Library/Frameworks/QtGui.framework/Versions/4/Headers -I/usr/include/QtGui -I/usr/include -Iauto/moc -F/Library/Frameworks
LINK          = g++
LFLAGS        = -headerpad_max_install_names
LIBS          = $(SUBLIBS) -F/Library/Frameworks -L/Library/Frameworks -framework QtGui -framework QtCore 
AR            = ar cq
RANLIB        = ranlib -s
QMAKE         = /usr/bin/qmake
TAR           = tar -cf
COMPRESS      = gzip -9f
COPY          = cp -f
SED           = sed
COPY_FILE     = cp -f
COPY_DIR      = cp -f -R
STRIP         = 
INSTALL_FILE  = $(COPY_FILE)
INSTALL_DIR   = $(COPY_DIR)
INSTALL_PROGRAM = $(COPY_FILE)
DEL_FILE      = rm -f
SYMLINK       = ln -f -s
DEL_DIR       = rmdir
MOVE          = mv -f
CHK_DIR_EXISTS= test -d
MKDIR         = mkdir -p
export MACOSX_DEPLOYMENT_TARGET = 10.4

####### Output directory

OBJECTS_DIR   = bin/

####### Files

SOURCES       = src/main.cpp \
		src/gui/main_window.cpp \
		src/backend/abstract_resource.cpp auto/moc/moc_main_window.cpp \
		auto/resources/qrc_icons.cpp
OBJECTS       = bin/main.o \
		bin/main_window.o \
		bin/abstract_resource.o \
		bin/moc_main_window.o \
		bin/qrc_icons.o
DIST          = /usr/local/Qt4.6/mkspecs/common/unix.conf \
		/usr/local/Qt4.6/mkspecs/common/mac.conf \
		/usr/local/Qt4.6/mkspecs/common/mac-g++.conf \
		/usr/local/Qt4.6/mkspecs/qconfig.pri \
		/usr/local/Qt4.6/mkspecs/features/qt_functions.prf \
		/usr/local/Qt4.6/mkspecs/features/qt_config.prf \
		/usr/local/Qt4.6/mkspecs/features/exclusive_builds.prf \
		/usr/local/Qt4.6/mkspecs/features/default_pre.prf \
		/usr/local/Qt4.6/mkspecs/features/mac/default_pre.prf \
		/usr/local/Qt4.6/mkspecs/features/mac/dwarf2.prf \
		/usr/local/Qt4.6/mkspecs/features/debug.prf \
		/usr/local/Qt4.6/mkspecs/features/default_post.prf \
		/usr/local/Qt4.6/mkspecs/features/mac/default_post.prf \
		/usr/local/Qt4.6/mkspecs/features/mac/objective_c.prf \
		/usr/local/Qt4.6/mkspecs/features/warn_on.prf \
		/usr/local/Qt4.6/mkspecs/features/qt.prf \
		/usr/local/Qt4.6/mkspecs/features/unix/thread.prf \
		/usr/local/Qt4.6/mkspecs/features/moc.prf \
		/usr/local/Qt4.6/mkspecs/features/mac/rez.prf \
		/usr/local/Qt4.6/mkspecs/features/mac/sdk.prf \
		/usr/local/Qt4.6/mkspecs/features/resources.prf \
		/usr/local/Qt4.6/mkspecs/features/uic.prf \
		/usr/local/Qt4.6/mkspecs/features/yacc.prf \
		/usr/local/Qt4.6/mkspecs/features/lex.prf \
		KeepStored.pro
QMAKE_TARGET  = keep-stored
DESTDIR       = 
TARGET        = keep-stored.app/Contents/MacOS/keep-stored

####### Custom Compiler Variables
QMAKE_COMP_QMAKE_OBJECTIVE_CFLAGS = -pipe \
		-g \
		-gdwarf-2 \
		-Wall \
		-W


first: all
####### Implicit rules

.SUFFIXES: .o .c .cpp .cc .cxx .C

.cpp.o:
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o "$@" "$<"

.cc.o:
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o "$@" "$<"

.cxx.o:
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o "$@" "$<"

.C.o:
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o "$@" "$<"

.c.o:
	$(CC) -c $(CFLAGS) $(INCPATH) -o "$@" "$<"

####### Build rules

all: Makefile keep-stored.app/Contents/PkgInfo keep-stored.app/Contents/Resources/empty.lproj keep-stored.app/Contents/Info.plist $(TARGET)

$(TARGET):  $(OBJECTS)  
	@$(CHK_DIR_EXISTS) keep-stored.app/Contents/MacOS/ || $(MKDIR) keep-stored.app/Contents/MacOS/ 
	$(LINK) $(LFLAGS) -o $(TARGET) $(OBJECTS) $(OBJCOMP) $(LIBS)

Makefile: KeepStored.pro  /usr/local/Qt4.6/mkspecs/macx-g++/qmake.conf /usr/local/Qt4.6/mkspecs/common/unix.conf \
		/usr/local/Qt4.6/mkspecs/common/mac.conf \
		/usr/local/Qt4.6/mkspecs/common/mac-g++.conf \
		/usr/local/Qt4.6/mkspecs/qconfig.pri \
		/usr/local/Qt4.6/mkspecs/features/qt_functions.prf \
		/usr/local/Qt4.6/mkspecs/features/qt_config.prf \
		/usr/local/Qt4.6/mkspecs/features/exclusive_builds.prf \
		/usr/local/Qt4.6/mkspecs/features/default_pre.prf \
		/usr/local/Qt4.6/mkspecs/features/mac/default_pre.prf \
		/usr/local/Qt4.6/mkspecs/features/mac/dwarf2.prf \
		/usr/local/Qt4.6/mkspecs/features/debug.prf \
		/usr/local/Qt4.6/mkspecs/features/default_post.prf \
		/usr/local/Qt4.6/mkspecs/features/mac/default_post.prf \
		/usr/local/Qt4.6/mkspecs/features/mac/objective_c.prf \
		/usr/local/Qt4.6/mkspecs/features/warn_on.prf \
		/usr/local/Qt4.6/mkspecs/features/qt.prf \
		/usr/local/Qt4.6/mkspecs/features/unix/thread.prf \
		/usr/local/Qt4.6/mkspecs/features/moc.prf \
		/usr/local/Qt4.6/mkspecs/features/mac/rez.prf \
		/usr/local/Qt4.6/mkspecs/features/mac/sdk.prf \
		/usr/local/Qt4.6/mkspecs/features/resources.prf \
		/usr/local/Qt4.6/mkspecs/features/uic.prf \
		/usr/local/Qt4.6/mkspecs/features/yacc.prf \
		/usr/local/Qt4.6/mkspecs/features/lex.prf \
		/Library/Frameworks/QtGui.framework/QtGui.prl \
		/Library/Frameworks/QtCore.framework/QtCore.prl
	$(QMAKE) -spec /usr/local/Qt4.6/mkspecs/macx-g++ -macx -o Makefile KeepStored.pro
/usr/local/Qt4.6/mkspecs/common/unix.conf:
/usr/local/Qt4.6/mkspecs/common/mac.conf:
/usr/local/Qt4.6/mkspecs/common/mac-g++.conf:
/usr/local/Qt4.6/mkspecs/qconfig.pri:
/usr/local/Qt4.6/mkspecs/features/qt_functions.prf:
/usr/local/Qt4.6/mkspecs/features/qt_config.prf:
/usr/local/Qt4.6/mkspecs/features/exclusive_builds.prf:
/usr/local/Qt4.6/mkspecs/features/default_pre.prf:
/usr/local/Qt4.6/mkspecs/features/mac/default_pre.prf:
/usr/local/Qt4.6/mkspecs/features/mac/dwarf2.prf:
/usr/local/Qt4.6/mkspecs/features/debug.prf:
/usr/local/Qt4.6/mkspecs/features/default_post.prf:
/usr/local/Qt4.6/mkspecs/features/mac/default_post.prf:
/usr/local/Qt4.6/mkspecs/features/mac/objective_c.prf:
/usr/local/Qt4.6/mkspecs/features/warn_on.prf:
/usr/local/Qt4.6/mkspecs/features/qt.prf:
/usr/local/Qt4.6/mkspecs/features/unix/thread.prf:
/usr/local/Qt4.6/mkspecs/features/moc.prf:
/usr/local/Qt4.6/mkspecs/features/mac/rez.prf:
/usr/local/Qt4.6/mkspecs/features/mac/sdk.prf:
/usr/local/Qt4.6/mkspecs/features/resources.prf:
/usr/local/Qt4.6/mkspecs/features/uic.prf:
/usr/local/Qt4.6/mkspecs/features/yacc.prf:
/usr/local/Qt4.6/mkspecs/features/lex.prf:
/Library/Frameworks/QtGui.framework/QtGui.prl:
/Library/Frameworks/QtCore.framework/QtCore.prl:
qmake:  FORCE
	@$(QMAKE) -spec /usr/local/Qt4.6/mkspecs/macx-g++ -macx -o Makefile KeepStored.pro

keep-stored.app/Contents/PkgInfo: 
	@$(CHK_DIR_EXISTS) keep-stored.app/Contents || $(MKDIR) keep-stored.app/Contents 
	@$(DEL_FILE) keep-stored.app/Contents/PkgInfo
	@echo "APPL????" >keep-stored.app/Contents/PkgInfo
keep-stored.app/Contents/Resources/empty.lproj: 
	@$(CHK_DIR_EXISTS) keep-stored.app/Contents/Resources || $(MKDIR) keep-stored.app/Contents/Resources 
	@touch keep-stored.app/Contents/Resources/empty.lproj
	
keep-stored.app/Contents/Info.plist: 
	@$(CHK_DIR_EXISTS) keep-stored.app/Contents || $(MKDIR) keep-stored.app/Contents 
	@$(DEL_FILE) keep-stored.app/Contents/Info.plist
	@sed -e "s,@ICON@,,g" -e "s,@EXECUTABLE@,keep-stored,g" -e "s,@TYPEINFO@,????,g" /usr/local/Qt4.6/mkspecs/macx-g++/Info.plist.app >keep-stored.app/Contents/Info.plist
dist: 
	@$(CHK_DIR_EXISTS) bin/keep-stored1.0.0 || $(MKDIR) bin/keep-stored1.0.0 
	$(COPY_FILE) --parents $(SOURCES) $(DIST) bin/keep-stored1.0.0/ && $(COPY_FILE) --parents src/gui/main_window.hpp src/backend/abstract_resource.hpp bin/keep-stored1.0.0/ && $(COPY_FILE) --parents resources/icons.qrc bin/keep-stored1.0.0/ && $(COPY_FILE) --parents src/main.cpp src/gui/main_window.cpp src/backend/abstract_resource.cpp bin/keep-stored1.0.0/ && (cd `dirname bin/keep-stored1.0.0` && $(TAR) keep-stored1.0.0.tar keep-stored1.0.0 && $(COMPRESS) keep-stored1.0.0.tar) && $(MOVE) `dirname bin/keep-stored1.0.0`/keep-stored1.0.0.tar.gz . && $(DEL_FILE) -r bin/keep-stored1.0.0


clean:compiler_clean 
	-$(DEL_FILE) $(OBJECTS)
	-$(DEL_FILE) *~ core *.core


####### Sub-libraries

distclean: clean
	-$(DEL_FILE) -r keep-stored.app
	-$(DEL_FILE) Makefile


mocclean: compiler_moc_header_clean compiler_moc_source_clean

mocables: compiler_moc_header_make_all compiler_moc_source_make_all

compiler_objective_c_make_all:
compiler_objective_c_clean:
compiler_moc_header_make_all: auto/moc/moc_main_window.cpp
compiler_moc_header_clean:
	-$(DEL_FILE) auto/moc/moc_main_window.cpp
auto/moc/moc_main_window.cpp: src/gui/main_window.hpp
	/Developer/Tools/Qt/moc $(DEFINES) $(INCPATH) -D__APPLE__ -D__GNUC__ src/gui/main_window.hpp -o auto/moc/moc_main_window.cpp

compiler_rcc_make_all: auto/resources/qrc_icons.cpp
compiler_rcc_clean:
	-$(DEL_FILE) auto/resources/qrc_icons.cpp
auto/resources/qrc_icons.cpp: resources/icons.qrc
	/Developer/Tools/Qt/rcc -name icons resources/icons.qrc -o auto/resources/qrc_icons.cpp

compiler_image_collection_make_all: qmake_image_collection.cpp
compiler_image_collection_clean:
	-$(DEL_FILE) qmake_image_collection.cpp
compiler_moc_source_make_all:
compiler_moc_source_clean:
compiler_rez_source_make_all:
compiler_rez_source_clean:
compiler_uic_make_all:
compiler_uic_clean:
compiler_yacc_decl_make_all:
compiler_yacc_decl_clean:
compiler_yacc_impl_make_all:
compiler_yacc_impl_clean:
compiler_lex_make_all:
compiler_lex_clean:
compiler_clean: compiler_moc_header_clean compiler_rcc_clean 

####### Compile

bin/main.o: src/main.cpp src/gui/main_window.hpp
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o bin/main.o src/main.cpp

bin/main_window.o: src/gui/main_window.cpp src/gui/main_window.hpp
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o bin/main_window.o src/gui/main_window.cpp

bin/abstract_resource.o: src/backend/abstract_resource.cpp 
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o bin/abstract_resource.o src/backend/abstract_resource.cpp

bin/moc_main_window.o: auto/moc/moc_main_window.cpp 
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o bin/moc_main_window.o auto/moc/moc_main_window.cpp

bin/qrc_icons.o: auto/resources/qrc_icons.cpp 
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o bin/qrc_icons.o auto/resources/qrc_icons.cpp

####### Install

install:   FORCE

uninstall:   FORCE

FORCE:

