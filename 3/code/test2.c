
#include <stdio.h>

int add(int *a, int b) {
  *a += b;
  return *a;
}

int main() {
  int a = 2;
  int *p = &a;
  add(p, 1);
  printf("%d\n", *p);
}
