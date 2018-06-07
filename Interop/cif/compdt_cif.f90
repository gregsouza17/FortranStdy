program tst

  ! Calls a C subroutine (void function) to modify the value of
  ! two complex variables, of float and double precision
  
  use iso_c_binding
  external CComplex

  complex :: w !float
  double complex :: z !double

  call CComplex(w,z)

  write(*,*) w
  write(*,*) z

end program tst



  
  
