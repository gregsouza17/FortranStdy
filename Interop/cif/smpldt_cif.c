#include <stdio.h>

/* C function module to be called from a 
fortran program of the same name.f90 */

void csim_(int *i, int *r, int *k){ 
/*   Get the adress of 3 integers, sum the first two
     and store the result in the last */
  *k = *r + *i;
}
