      program tripsol
!
!     Calculate the final score (avarage) of 3 testes
! + math score, bt the math score is oly considered if the raises
!     the avarage

      implicit none

      real::p1,p2,p3,maths
      real::av_nomath,av_math

!read marks
      write(*,*) 'Prease insert your grades'
      read(*,*) p1,p2,p3,maths

!avarages
      av_nomath = p1 + p2 + p3
      av_math = av_nomath + maths

      av_nomath = av_nomath/3.0
      av_math = av_math/4.0

      if (av_nomath > av_math) then
         write(*,*) 'Final avarage = ', av_nomath
      else
         write(*,*) 'Fibal abarage = ', av_math
      end if

      end program tripsol
      
