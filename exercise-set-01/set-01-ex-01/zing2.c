#include <stdio.h>
#include <unistd.h>

void zing(void) {
	char *username = getlogin();
	printf("%s sucks at coding.\n", username);
}
