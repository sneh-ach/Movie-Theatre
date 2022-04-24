#Sneh Acharya - 1001916002

SRC1 = Code7-1001916002.c
SRC2 = BSTLib.c
SRC3 = ListLib.c
SRC4 = MovieTheaterLib.c
SRC5 = QueueLib.c
SRC6 = StackLib.c

OBJ1 = $(SRC1:.c=.o)
OBJ2 = $(SRC2:.c=.o)
OBJ3 = $(SRC3:.c=.o)
OBJ4 = $(SRC4:.c=.o)
OBJ5 = $(SRC5:.c=.o)
OBJ6 = $(SRC6:.c=.o)

EXE = $(SRC1:.c=.e)

HFILES = BSTLib.h ListLib.h MovieTheaterLib.h QueueLib.h StackLib.h

CFLAGS = -g

all : $(EXE)

$(EXE): $(OBJ1) $(OBJ2) $(OBJ3) $(OBJ4) $(OBJ5) $(OBJ6)
	gcc $(CFLAGS) $(OBJ1) $(OBJ2) $(OBJ3) $(OBJ4) $(OBJ5) $(OBJ6) -o $(EXE)

$(OBJ1) : $(SRC1) $(HFILES)
	gcc -c $(CFLAGS) $(SRC1) -o $(OBJ1)

$(OBJ2) : $(SRC2) $(HFILES)
	gcc -c $(CFLAGS) $(SRC2) -o $(OBJ2)

$(OBJ3) : $(SRC3) $(HFILES)
	gcc -c $(CFLAGS) $(SRC3) -o $(OBJ3)

$(OBJ4) : $(SRC4) $(HFILES)
	gcc -c $(CFLAGS) $(SRC4) -o $(OBJ4)

$(OBJ5) : $(SRC5) $(HFILES)
	gcc -c $(CFLAGS) $(SRC5) -o $(OBJ5)

$(OBJ6) : $(SRC6) $(HFILES)
	gcc -c $(CFLAGS) $(SRC6) -o $(OBJ6)