      program func
      implicit none

      real :: x, fx

      write(*,*) 'Input me with the x, senpai'
      read(*,*) x

      if (x == -1.0) then
         do while(x== -1.0)

            write(*,*) 'Dont input -1 senpai, try other number'

            read(*,*) x
            
         end do
         
      end if

      fx = x/(1.0+x)

      write(*,*) 'x/1+x for x =',x, 'is =' , fx
      end program func
      
