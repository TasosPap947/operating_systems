all: zing zing2 fconc

zing: main.o zing.o
	gcc main.o zing.o -o zing

zing2: main.o zing2.o
	gcc main.o zing2.o -o zing2

main.o: main.c
	gcc -Wall -c main.c

zing2.o: zing2.c
	gcc -Wall -c zing2.c

fconc: fconc.c
	gcc -Wall fconc.c -o fconc
