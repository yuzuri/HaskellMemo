#!makefile
#Time-stamp: "2014-04-22 20:24:54 yuzurihara"

CC=gcc

# my library
# CosmicString.o z2dlib.o fftwlib.o pos2flib.o event_genlib.o Matrixlib.o
# fftwlib.o noise_generatelib.o
OBJ1=calTdist.c
OBJ2=test.hs CalCorrelation.hs
OBJ3=
OBJ4=
OBJ5=

GSLLINK=-lgsl -lgslcblas
FFT=-lfftw3 -lm
LINK=-lgsl -lgslcblas -lfftw3 -lm
VPATH=/Users/yuzurihara/Dropbox/lib
COPT = -Wall -W -O2

TARGET=test_corr calTdist

all:$(TARGET)

calTdist:$(OBJ1)
	$(CC) -o $@ $(OBJ1) ${GSLLINK}
	@echo "*** Making $@ ***"

test_corr:$(OBJ2)
	ghc -o $@ $(OBJ2) ${GSLLINK}
	@echo "*** Making $@ ***"

:$(OBJ3)
	$(CC) -o $@ $(OBJ3)
	@echo "*** Making $@ ***"
:$(OBJ4)
	$(CC) -o $@ $(OBJ4)
	@echo "*** Making $@ ***"
:$(OBJ5)
	$(CC) -o $@ $(OBJ5)
	@echo "*** Making $@ ***"

clean:
	rm -f *.o $(TARGET) *.hi

o:
	rm -f *.o

.cc.o:
	$(CC) -o $<

