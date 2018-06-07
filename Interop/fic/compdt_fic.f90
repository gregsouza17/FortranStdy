subroutine FCmplx(w,z)
  ! Fortran subroutine to be called by a C function to
  !   modify the values of complex data types of
  ! float and double precision
  
  implicit none
  
  complex :: w !float precision
  double complex :: z !double

  w = (32., 0.007)
  z = (66.67, 94.1)

end subroutine FCmplx


