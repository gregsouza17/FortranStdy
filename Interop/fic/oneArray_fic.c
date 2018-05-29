#include <stdio.h>

/* C function to call a routine in fortran, */
/*   it defines an array with N elements and call */
/*   a routine to sum it's elements */

extern void vecref_(int * , int[], int *);

int main(void)
  
{
  int sum,i, N = 12;
  int v[N];

  for (i = 0; i < N; ++i) {
    v[i] = 1;
  }

  vecref_(&N,v, &sum);

  printf("%d \n", sum);
  
  return 0;
}
