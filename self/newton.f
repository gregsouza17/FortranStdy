      program newton
!
! solves f(x) = 0 by newton's methd
!
      implicit none

      integer :: its            !interation counter
      integer :: maxits = 20
      integer :: converged = 0 !convergence flag
      real ::eps=1.0e-6         !maximum error
      real :: x = 2             !starting guess

      its = 0
      
      do while(converged == 0 .and. its < maxits)
         x = x -f(x) / f(x)
         write(*,*) its
         its = its + 1
         if(abs(f(x)) <= eps) converged = 1
      end do

      if(converged  == 1) then
         write(*,*) 'Newton converged'
      else
         write(*,*) 'Newton did not converge'

      end if
     

     
      
      contains
      function f(x)
      real :: f,x
      f = x**3 - 9
      end function f

      function Df(x)
      real :: Df, x
      Df = x*x 
      end function Df
      
      end program newton
