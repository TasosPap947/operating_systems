#include <stdio.h>

int main() {
  int x = 2;
  int *p = x;
  *p = *p + 1;
  printf("%d\n",&p);
  printf("%d\n",p);
}
