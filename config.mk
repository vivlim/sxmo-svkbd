# svkbd version
VERSION = 0.1

LAYOUT ?= sxmo

# Customize below to fit your system

# paths
PREFIX ?= /usr/local
MANPREFIX = ${PREFIX}/share/man

X11INC = /usr/X11R6/include
X11LIB = /usr/X11R6/lib

# Xinerama, comment if you don't want it
XINERAMALIBS = -L${X11LIB} -lXinerama
XINERAMAFLAGS = -DXINERAMA

# includes and libs
INCS = -I. -I./layouts -I/usr/include -I${X11INC} -I/usr/include/freetype2
LIBS = -L/usr/lib -lc -L${X11LIB} -lX11 -lXtst -lfontconfig -lXft ${XINERAMALIBS}

# flags
CPPFLAGS = -DVERSION=\"${VERSION}\" ${XINERAMAFLAGS}
CFLAGS = -g -std=c99 -pedantic -Wall -Os ${INCS} ${CPPFLAGS}
LDFLAGS = -g ${LIBS}

# Solaris
#CFLAGS = -fast ${INCS} -DVERSION=\"${VERSION}\"
#LDFLAGS = ${LIBS}

# compiler and linker
CC = cc

