#include "stdio.h"

int intSize() {
  int N = 20;
  int intArray[N];
  int * intPtr1;
  int * intPtr2;
  // TODO: Write code to compute size of an integer.

  intPtr1 = intArray;
  printf("%x\n", intPtr1);
  intPtr2 = intPtr1 + N;
  printf("%x\n", intPtr2);
  printf("( (int) intPtr2 - (int) intPtr1): %d\n", ( (int) intPtr2 - (int) intPtr1));

  printf("( (int) intPtr2 - (int) intPtr1) / N: %d\n", ( (int) intPtr2 - (int) intPtr1) / N);

  return ( (int) intPtr2 - (int) intPtr1) / N;

}

int main() {
	intSize();
}