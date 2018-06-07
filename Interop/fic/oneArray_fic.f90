subroutine VecRef(N,v,total)
  ! Subroutine to serve as a module for a C function,
  !   it gets the number of elements N of a vector v and
  !   returns the total sum of its elements

  integer :: N
  integer ::i, total
  integer :: v(N)

  total = 0

  do i = 1,N
     total = total + v(i)
  end do

end subroutine VecRef


