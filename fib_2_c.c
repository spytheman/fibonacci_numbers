#include <stdio.h>
#include <stdint.h>
#include <stdlib.h>

uint64_t fib(uint64_t n) {
   if(n <= 1) {
	  return n;
   }
   return fib(n - 1) + fib(n - 2);
}	

int main(int argc, char *argv[]) {
   uint64_t n;
   n = atoll(argv[1]);
   printf("> n: %ld | fib(n): %ld\n", n, fib(n+1));
   return 0;
}

