program main

  ! Fortran program to call a module in C
  ! (file with the sabme name)
  
  use iso_c_binding
  implicit none

  integer, parameter :: N = 13 !Number of elements
  integer :: a(N), sum !vector and result

  data a(:)/N*1/ !Vector Values
  
  external FixVec !define external module

  call FixVec(N, a, sum) !Call for the module
  
  write(*,*) sum
  
  

end program main

