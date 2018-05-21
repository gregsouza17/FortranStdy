      program fib
      implicit none

      integer :: limit, i
      integer :: flast, f, fnext

      f = 1; flast = 1

      read(*,*) limit

      if (limit>0) write(*,*) flast
      if (limit>1) then
         write(*,*) f

     
         do i = 3, limit

            fnext = flast + f
            write(*,*) fnext

            flast =f
            f = fnext
            
         
         
         end do
      end if
      
      end program fib
      
      
      
