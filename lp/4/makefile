output: main.o lib.a
	gcc main.o lib.a -o output
main.o: main.c
	gcc -c main.c

lib.a: sorted.o sorted.h
	ar -rsc lib.a sorted.o

sorted.o:
	gcc -c sorted.c

clean:
	del .o.a