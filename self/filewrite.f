      program format1
      implicit none

      integer :: i

      open(20, file = 'cubes.dat')
      open(30, file = 'morecubes.dat')
      do i =1,20

         write(20,1) i,i*i, i**3
         write(30,1) i, i*i, i**3
      end do
      close(20)
 1    format(i4,i6,i8)
      
      end program format1
