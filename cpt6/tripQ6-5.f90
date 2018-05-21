program main
  implicit none

  type triplet
     real :: u
     real, dimension(3) :: du
     real, dimension(3,3) :: d2u
  end type triplet

  type ptr
     real, pointer :: du3
  end type ptr
  
  type(triplet), dimension(10,20,30), target :: tar
  type(ptr), dimension(5,10,15) :: du3
  integer :: i,j,k

  forall(i=1:10, j=1:20, k = 1:30)
     tar(i,j,k)%u = i + 10*(j-1) + 200*(k-1)
     tar(i,j,k)%du(3) = i + 10*j-1 + 200
  end forall

  forall(i=1:5,j=1:10,k=1:15)
     du3(i,j,k)%du3 => tar(2*i, 2*j,2*k)%du(3)
  end forall
  
  write(*,*) du3(5,2,10)%du3, tar(10,4,20)%du(3)
 

  
  end program main
  

  
