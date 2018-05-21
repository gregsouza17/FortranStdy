      program initmatrix

      implicit none

      integer :: i,j,k
      real, allocatable:: A(:,:),B(:,:),C(:,:)
      i=2 ; j=3 ; k=2

      allocate(A(i,j))
      allocate(B(j,k))
      allocate(C(i,k))

      A(1,1) = 2; A(1,2) = 0 ; A(1,3) = 2
      A(2,1) = 0; A(2,2) = 2 ; A(2,3) = 0

      B(1,1) =1 ; B(1,2) = 2
      B(2,1) =3; B(2,2) = 4
      B(3,1) = 5; B(3,2) = 6

      write(*,*) A
      write(*,*) B

      call mult(A,B,C)

      write(*,*) C


      
      deallocate(A)
      deallocate(B)
      deallocate(C)

      contains

      subroutine mult(A,B,C)

      real :: A(i,j) , B(j,k), C(i,k)
      integer :: its, jts, kts
      real:: temp

      do its = 1, i
         do kts = 1,k
            temp = 0
            do jts = 1,j
               temp = temp + A(its,jts)*B(jts, kts)
            end do
            C(its,kts) = temp
         end do
      end do
            
      
      
      end subroutine mult
     
      

      
      end program initmatrix
