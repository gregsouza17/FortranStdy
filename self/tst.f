      program tst

      implicit none

      integer, allocatable :: a(:,:)
      integer :: nmax, i,j

      write(*,*) 'nmax'
      read(*,*) nmax

      allocate(a(nmax, nmax))


      do i =1,nmax
         do j =1,nmax
         
            a(i,j) = (i-1)*nmax + j
         end do
         write(*,*) a(i, :)
      end do
      
      
      
      end program tst
