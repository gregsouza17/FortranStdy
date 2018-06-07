#include <stdio.h>

/* C program to be used as a module for the fortran program of */
/* same name, being used to modify complex data structures, */
/*   complex structures in this case */

struct cpx{float r,i;};
//Float Complex
struct dpx{double r,i;};
//Double Complex

void ccomplex_(struct cpx *w, struct dpx *z){
  /* receives a float and a double complex value adress and change */
  /*   the values of the real and imaginary part of each */
  w -> r = 32.;
  w -> i = .007;
  z -> r = 66.67;
  z -> i = 94.1;
}
