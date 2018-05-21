      program change

      implicit none

      integer :: n1, n5, n10, n25
      integer :: price

      price = 0
      n1 = 0
      n5 = 0
      n10 =0
      n25 = 0
      
      write(*,*) 'insert price (1-99):'
      read(*,*) price

     
      n25 = price/25
     
      price = price-(25*n25)
     
      
      n10 = price/10
      price = price - (10*n10)

      n5 = price/5
      n1 = price - (5*n5)

      write(*,*) 'Return ',n25, '25c,', n10, '10c,'
      write(*,*) n5, '5c,', n1, '1c'

      
      end program change
