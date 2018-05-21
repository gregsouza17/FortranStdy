      program factorial

      implicit none
      integer :: nfact = 1
      integer :: n

      teste: do n = 1,10
         nfact = n*nfact
         write(*,*) n, nfact

      end do teste

      
      end program factorial
