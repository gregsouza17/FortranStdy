      program primes
      implicit none

      integer, allocatable :: prime(:)
      integer :: limit,i,nprimes, tstprime, rest
      

      write(*,*) 'Input the limit, sudo-senpai'
      read(*,*) limit

      nprimes = 1

      allocate(prime(limit))

      prime(1) = 2
      tstprime = 3
      
      do while(nprimes < limit)

         rest = 1
         do i =1,nprimes
            rest = rest*mod(tstprime, prime(i))
         end do

         if(rest /= 0) then
            nprimes = nprimes +1
            prime(nprimes) = tstprime
            
         end if
         
         tstprime = tstprime + 2
         
      end do
      
      write(*,*) prime(:)
      
      end program primes
      
