SHELL=/bin/bash
CFLAGS=-ansi -Wpedantic -Wall -Werror -D_REENTRANT -D_THREAD_SAFE -D_POSIX_C_SOURCE=200112L -D_DEFAULT_SOURCE 

LIBRARIES=-lpthread

all: 	uno.exe

uno.exe: uno.o DBGpthread.o
	gcc -o uno.exe uno.o DBGpthread.o ${LIBRARIES}

uno.o: uno.c DBGpthread.h printerror.h
	gcc ${CFLAGS} -c uno.c

DBGpthread.o: DBGpthread.c printerror.h
	gcc ${CFLAGS} -c DBGpthread.c

.PHONY:	clean

clean:
	-rm -f uno.o DBGpthread.o uno.exe


