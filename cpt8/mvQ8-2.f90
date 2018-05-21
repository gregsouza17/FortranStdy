program mv
  implicit none

  integer ,parameter :: N = 5
  real :: x(N),y(N),mean, variance
  integer :: i

  forall(i=1:N)
     x(i) = i
  end forall

  

  mean = (1./N)*sum(x)

  if (N>1) then
     y = (x - mean)**2
     variance = sum(y)
     variance = sum(y)/(N-1)
  end if

  
  write(*,*) mean,variance
  
  

  
end program mv

