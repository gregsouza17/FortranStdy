program aga
  implicit none

  integer, dimension(10) :: vec
  integer :: i, s1,s2,range

  forall(i=1:10)
     vec(i) = i
  end forall

  write(*,*) 'Region to swap'
  read(*,*) s1,s2

  
  if(s1>s2) call swap(s1,s2)

  range = (s2-s1)/2

  do i=0,range
     call swap(vec(s1+i),vec(s2-i))
  end do

  write(*,*) vec

contains

  subroutine swap(a,b)
    integer :: a,b
    integer :: temp
   
       temp = a
       a = b
       b = temp
   
  end subroutine swap

  
  
end program aga
