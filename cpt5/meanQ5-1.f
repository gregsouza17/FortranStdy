      program init

      implicit none

      integer :: N = 10
      integer :: i
      real, allocatable :: a(:)
      real :: mean, variance
      
      allocate(a(N))

      do i=1,N
         a(i) = 1
      end do

      call mean_var(a,mean,variance)

      contains

      subroutine mean_var(vec, mean, variance)

      real :: vec(N)
      real:: mean, variance
      integer :: j
      mean = 0
      variance = 0

      write(*,*) 'inside mean:',mean

      do j = 1, N
         mean = mean+vec(j)
      end do

      mean = mean/N

      write(*,*) 'inside mean:',mean

      if (N>1) then
         do j =1,N
            variance = (vec(j) - mean)**2
         end do

         variance = variance/(N-1)

      end if

      write(*,*) 'inside variance',variance
      end subroutine mean_var

      end program init
