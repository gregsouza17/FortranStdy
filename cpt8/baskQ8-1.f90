program bask
  implicit none

  real :: a,b,c
  real :: r1,r2,delta
  complex :: c1,c2, cdelta
  

  read(*,*) a,b,c

  delta = b*b - 4*a*c 
  if (delta >= 0) then
     r1 = (-b + sqrt(delta))/2.0
     r2 = (-b - sqrt(delta))/2.0

     write(*,*) r1,r2

  else
     cdelta = delta
     
     c1 = (-b + sqrt(cdelta))/2.0
     c2 = (-b - sqrt(cdelta))/2.0
     
     write(*,*) c1,c2
  end if
  

   
end program bask
   
     
     
