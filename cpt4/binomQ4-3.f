      program binom

      implicit none

      integer, allocatable :: pascal(:,:)
      integer :: limit, i, j

      write(*,*) 'Insert the limit, sudo-senpai'
      read(*,*) limit

      allocate(pascal(limit,limit))

      pascal(1,1) = 1
     
      write(*,*) pascal(1,1)
      do i = 2, limit
         pascal(i,1) = 1
         do j =2,limit
            pascal(i,j) = pascal(i-1,j) + pascal(i-1, j-1)
         end do
         write(*,*) pascal(i,1:i)
      end do
      end program binom
