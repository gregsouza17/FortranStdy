      program format1
      implicit none

      integer :: i

      do i =1,20

         write(*,1) i,i*i, i**3
      end do
 1    format(i4,i5,i6)
      
      end program format1
