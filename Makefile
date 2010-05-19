VHD_LOCAL = file.vhd

XCO_LOCAL = core.xco

LIBS = some_user_lib \
       other_user_lib

#where are libs located?
LIBDIR="../$$lib"

#where are makefile and templates located?
INCLUDEDIR=../

include $(INCLUDEDIR)Makefile
