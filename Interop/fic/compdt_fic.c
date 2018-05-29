#include <stdio.h>

/* C program to call for a module in Fortran to */
/* modify values of complex structures of float and double */
/* precisiou */

struct cpx{float r,i;};
//Complex with float precision

struct dpx{double r,i;};
//Complex with double precision

int main(void)
{
  /* Declaration of values d1,d2 and pointers to be passed */
  /*   to the fortran module */
  struct cpx d1, *w;
  struct dpx d2,*z;
  w = &d1 ; z = &d2 ;

  //Declaration of the external module
  extern void fcmplx_(struct cpx *w, struct dpx *z);
		   
  fcmplx_(w,z);
  
  //testing the results
  printf("%f + i%f \n", w->r, w->i);
  printf("%f + i%f \n", z ->r, z -> i);
 
}

