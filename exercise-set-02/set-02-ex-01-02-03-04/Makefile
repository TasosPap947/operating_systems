.PHONY: all clean

all: fork-example tree-example pipe-example ask2-fork ask2-tree ask2-signals ask2-pipes

CC = gcc
CFLAGS = -g -Wall -O2
SHELL= /bin/bash

fork-example: fork-example.o proc-common.o
	$(CC) $(CFLAGS) $^ -o $@

tree-example: tree-example.o tree.o
	$(CC) $(CFLAGS) $^ -o $@

pipe-example: pipe-example.o proc-common.o
	$(CC) $(CFLAGS) $^ -o $@

ask2-fork: ask2-fork.o proc-common.o
	$(CC) $(CFLAGS) $^ -o $@

ask2-tree: ask2-tree.o proc-common.o tree.o
	$(CC) $(CFLAGS) $^ -o $@

ask2-signals: ask2-signals.o proc-common.o tree.o
	$(CC) $(CFLAGS) $^ -o $@

ask2-pipes: ask2-pipes.o proc-common.o tree.o
	$(CC) $(CFLAGS) $^ -o $@

%.s: %.c
	$(CC) $(CFLAGS) -S -fverbose-asm $<

%.o: %.c
	$(CC) $(CFLAGS) -c $<

%.i: %.c
	gcc -Wall -E $< | indent -kr > $@

clean:
	rm -f *.o tree-example fork-example pstree-this ask2-{fork,tree,signals,pipes}
