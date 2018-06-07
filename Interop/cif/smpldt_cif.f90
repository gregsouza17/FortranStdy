program ex1
  
  ! Fortran Program for example on calling
  ! a C subroutine (void function) inside fortran
  !   for modifying simple data structures, using
  ! the csim_(int,int) function in the smpldt_cif.c file
  
  use iso_c_binding
  !module for inteporations with C types
  
  external CSim
  !declarint the use of the external Csim function
  
  integer(c_int) :: i, j, k
  i = 1 ; j = 2; k=0
  
  call CSim(i,j,k)

  write(*,*) i, j, k

end program ex1

! It can linked in compiling as:
! $gfortran file.f90 file.c
