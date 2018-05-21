program arra
  implicit none

  integer, dimension(100,100), target :: l,m,n
  integer, dimension(:,:), pointer :: ll, mm, nn
  integer :: i,j,k

 
  forall(i=1:100,j=1:100)
     l(i,j) = i + 100*(j-1)
     m(i,j) = 10*i - 100*(j-1)
     n(i,j) = i*j + j

  end forall
  j = 12; k = 23

  

  ll => l(j:k+1, j-1:k)
  mm => m(j:k+1, j-1:k)
  nn => n(j:k+1, j-1:k)

  write(*,*) l(20,20)
  
  ll = ll + ll
  ll = mm +nn + n(j:k+1, j:k+1)
  
  write(*,*) l(20, 20)

  
  
  
  end program arra

  
