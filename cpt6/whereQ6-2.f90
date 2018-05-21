program onde
  implicit none

  real, dimension(10) :: z
  real :: rand
  integer :: i


  
  do i =1,10
     call random_number(rand)
     z(i) = 10*(rand - 0.5)
  end do


  write(*,*) z

  where(z>0) z = z**2

  write(*,*) z
  
  end program onde
