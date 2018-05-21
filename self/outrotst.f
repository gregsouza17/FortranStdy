      program teste
      real ::x,y
      x=1
      y=2

      call swap(x,y)

      write(*,*) x,y

      contains
      subroutine swap(a,b)
      real :: a,b
      real :: temp

      temp = a
      a = b
      b = temp
      end subroutine swap
      
      
      end program teste
