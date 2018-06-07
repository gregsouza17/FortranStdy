subroutine Fsim(i,r)
  ! Fortran module to be called from a C program
  ! (file with the same name) to modify simple data
  ! structures
  implicit none
  
    integer:: i
    real:: r

    r = i

  end subroutine Fsim
 

