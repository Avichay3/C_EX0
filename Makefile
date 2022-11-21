CC = gcc
AR = ar
CFLAGS = -g -Wall
OBJECTS_LOOP_BASIC = basicClassification.o advancedClassificationLoop.o NumClass.h
OBJECTS_RECURSIVE_BASIC = basicClassification.o advancedClassificationRecursion.o NumClass.h

all: recursived recursives loopd loops mains maindloop maindrec
maindrec: $(OBJECTS_RECURSIVE_BASIC) recursived
	$(CC) $(FLAGS) -o maindloop $(OBJECTS_RECURSIVE_BASIC) recursives

maindloop: $(OBJECTS_LOOP_BASIC) loopd
	$(CC) $(FLAGS) -o maindloop $(OBJECTS_LOOP_BASIC) loops

mains: $(OBJECTS_RECURSIVE_BASIC) recursives
	$(CC) $(FLAGS) -o mains  $(OBJECTS_RECURSIVE_BASIC) recursives

loops: $(OBJECTS_LOOP_BASIC)
	$(AR) -rcs libclassloops.a $(OBJECTS_LOOP_BASIC)

loopd: $(OBJECTS_LOOP_BASIC)
	$(CC) -shared -o libclssloops.so $(OBJECTS_LOOP_BASIC)

recursives: $(OBJECTS_RECURSIVE_BASIC)
	$(AR) -rcs libclassrec.a $(OBJECTS_RECURSIVE_BASIC)

recursived: $(OBJECTS_RECURSIVE_BASIC)
	$(CC) -shared -o libclassrec.so $(OBJECTS_RECURSIVE_BASIC)

make clean:
	rm -f *.o