#include <stdio.h>

/* C module to be called from a fortran program */
/* in the file with the same name */


void fixvec_(int *N, int *v, int *sum){
  /* gets an array v (in) and an integer adress sum, calculates */
  /*   the sum of all the elements in v and writes it in sum */
  
  int i;
  *sum = 0;

  for (i = 0; i < *N; i++) {
    *sum = *sum + v[i];
    
  }

 
}
