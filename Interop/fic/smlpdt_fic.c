#include <stdio.h>

/* C program to call a Fortran Module to */
/* modify simple data structures */

int main(void)
{
  int i = 100;
  float r;

  extern void fsim_(int *i, float *r);
  //declares fotran module in the file to be linked

  fsim_(&i, &r); //calls the module

  printf("%f\n",r );
  
  return 0;
}

