CC = gcc
AR = ar
CFLAGS = -g -Wall
OBJECTS_LOOP_BASIC = basicClassification.o advancedClassificationLoop.o
OBJECTS_RECURSIVE_BASIC = basicClassification.o advancedClassificationRecursion.o

all: recursived recursives loopd loops mains maindloop maindrec

maindrec: main.o recursived
	$(CC) $(FLAGS) -o maindloop $(OBJECTS_RECURSIVE_BASIC) recursives -lm

maindloop: main.o loopd
	$(CC) $(FLAGS) -o maindloop $(OBJECTS_LOOP_BASIC) loops -lm

mains: main.o recursives
	$(CC) $(FLAGS) -o mains  $(OBJECTS_RECURSIVE_BASIC) recursives -lm

loops: $(OBJECTS_LOOP_BASIC)
	$(AR) -rcs libclassloops.a $(OBJECTS_LOOP_BASIC)

loopd: $(OBJECTS_LOOP_BASIC)
	$(CC) -fPIC -shared $(OBJECTS_LOOP_BASIC) -o libclssloops.so 

recursives: $(OBJECTS_RECURSIVE_BASIC)
	$(AR) -rcs libclassrec.a $(OBJECTS_RECURSIVE_BASIC)

recursived: $(OBJECTS_RECURSIVE_BASIC)
	$(CC) -fPIC -shared $(OBJECTS_RECURSIVE_BASIC) -o libclassrec.so 

main.o: main.c NumClass.h
	$(CC) $(CFLAGS) main.c -c

basicClassification.o: basicClassification.c NumClass.h
	$(CC) $(CFLAGS) basicClassification.c -c 

advancedClassificationLoop.o: advancedClassificationLoop.c NumClass.h
	$(CC) $(CFLAGS) advancedClassificationLoop.c -c

advancedClassificationRecursion.o: advancedClassificationRecursion.c NumClass.h
	$(CC) $(CFLAGS) advancedClassificationRecursion.c -c

.PHONY: clean loops loopd reccursived reccursives

make clean:
	rm -f *.o *.a *so