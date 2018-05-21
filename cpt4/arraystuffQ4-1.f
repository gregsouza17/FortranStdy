      program arraystuff
!Create an array of N elements
!Assign values 1,..., N to the array
!REad two inteer values between 1,...N
!swap the order fo ALL elements between those 2 integers
      

      integer :: N = 10
      integer :: a(10)
      integer :: i
      integer :: s1,s2, temp, range
     
      write: do i = 1,N
         a(i) = i
      end do write

!     to swap

      write(*,*) 'Which elements should I swap?'
      read(*,*) s1,s2

      if(s1>s2) then
         s2 = temp
         s1 = s2
         s1 = temp
      end if

      range = (s2 - s1)/2

      do i = 0, range
         temp = a(s1+i)
         a(s1+i) = a(s2-i)
         a(s2-i) = temp
      end do

      do i =0, N
         write(*,*) i, a(i)

      end do
      
      
      end program arraystuff
