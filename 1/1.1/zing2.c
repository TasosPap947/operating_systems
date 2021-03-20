#define _XOPEN_SOURCE
#include <stdio.h>
#include <unistd.h>
char username[L_cuserid];

void zing(void) {
	cuserid(username);
	printf("Goodbye, %s\n", username);
}
