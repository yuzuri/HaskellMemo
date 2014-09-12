#makefile
#Time-stamp: "2014-02-15 11:54:35 yuzurihara"

# my library
# CosmicString.o z2dlib.o fftwlib.o pos2flib.o event_genlib.o Matrixlib.o
# fftwlib.o noise_generatelib.o
CC=ghc

OBJ1=ifcheck.hs
OBJ2=baby.hs
OBJ3=login.hs
OBJ4=cal_pearson.hs
OBJ5=helloworld.hs
OBJ6=dice.hs

GSLLINK=-lgsl -gslcblas
FFT=-lfftw3 -lm
LINK=-lgsl -lgslcblas -lfftw3 -lm

VPATH=/Users/yuzurihara/Dropbox/lib

TARGET=ifcheck helloworld dice

all:$(TARGET)

dice:$(OBJ6)
	$(CC) --make -o $@ $(OBJ6)
	@echo "*** Making $@ ***"

helloworld:$(OBJ5)
	$(CC) --make -o $@ $(OBJ5)
	@echo "*** Making $@ ***"

login_hs:$(OBJ3)
	$(CC) --make -o $@ $(OBJ3)
	@echo "*** Making $@ ***"

baby:$(OBJ2)
	$(CC) --make -o $@ $(OBJ2)
	@echo "*** Making $@ ***"

ifcheck:$(OBJ1)
	$(CC) --make -o $@ $(OBJ1)
	@echo "*** Making $@ ***"


:$(OBJ3)
	gcc -o $@ $(OBJ3)
	@echo "*** Making $@ ***"
:$(OBJ4)
	gcc -o $@ $(OBJ4)
	@echo "*** Making $@ ***"
:$(OBJ5)
	gcc -o $@ $(OBJ5)
	@echo "*** Making $@ ***"


clean:
	rm -f *.o *.hi
	rm -f  $(TARGET)

.c.o:
	$(CC) -c $<
