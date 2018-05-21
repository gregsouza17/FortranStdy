      module cardstuff
      
      implicit none
      
      integer, dimension(52) :: cards !start deck
      integer :: N = 52
      integer :: Nmax = 52
      
      contains

      subroutine swap(a,b)
      integer:: a,b
      integer :: temp

      temp = a
      a = b
      b= temp

      end subroutine swap

      
      subroutine initCards(cards)
      !initiate cards in order from 1 to 52
      integer, dimension(52) :: cards
      integer :: i

      do i = 1,N
         cards(i) = i
      end do

      end subroutine initCards

      subroutine shuffle(cards)
!     shuffle cards
      integer , dimension(52) :: cards
      integer :: i, j, k
      real :: rand

      do k=1,N
         do i = 1,N
            do j = 1,N
               call random_number(rand)
               if(rand>0.5) then
                  call swap(cards(i), cards(j))
               end if
            end do
         end do
      end do
            
            
      end subroutine shuffle

      subroutine deal(cards, hand)
      integer, dimension(52) :: cards
      integer, dimension(5) :: hand

      integer :: i

      do i = 1,5
         hand(i) = cards(Nmax)
         Nmax = Nmax-1
      end do

      end subroutine deal
      
      end module cardstuff
      

      program game
      
      use cardstuff      
      implicit none

      integer, dimension(5) :: Phand, Chand

      call initCards(cards)
      call shuffle(cards)
      
      call deal(cards, Phand)
      call deal(cards, Chand)

      
      
      end program game
      
