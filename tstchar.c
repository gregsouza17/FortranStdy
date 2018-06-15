#include <string.h>
#include <stdio.h>
#include <stdlib.h>


int main(void)
{


  int tst = 1;
  long int i;
  for(i=0; i<1400000; i++){
    if(-1)
      tst *= tst;
    else
      tst=0;


  }

  printf("%d\n" , tst);
	 
  
  return 0;
}


  /* int i1,i2,j,k; */
  /* char i1flag[100], i2flag[100], jflag[100],  kflag[100], elseflag[100]; */
  /* char d[100] = "Was Not Acessed", s[100] = "Has Ben Ascessed"; */
  /* strcpy(i1flag, d); strcpy(i2flag,d) ; strcpy(jflag,d); strcpy(kflag,d); */
  /* strcpy(elseflag, d); */

  

  
  /* for (i1 = 0; i1 < 10; ++i1) { */
  /*   strcpy(i1flag, s); */
  /*   for (i2 = 0; i2 < 10; ++i2) { */
  /*     strcpy(i2flag,s); */
      
  /*     if(i1 != i2){ */
	
  /* 	for(j=0; j<10; j++){ */
  /* 	  strcpy(jflag,s); */
  /* 	  for(k=0; k<3; k++){ */
  /* 	    strcpy(kflag,s); */
	    
  /* 	  } //for k */
  /* 	} //for j */
  /*     } //for if */
  /*     else { */
  /* 	strcpy(elseflag,s); */
  /*     } */
  /*   } //for i2 */
  /* } //for i1 */

  /* printf("i1 loop: %s \n" , i1flag); */
  /* printf("i2 loop: %s \n", i2flag); */
  /* printf("else: %s\n", elseflag ); */
  /* printf("j loop: %s \n", jflag); */
  /* printf("kloop: %s\n", kflag ); */
