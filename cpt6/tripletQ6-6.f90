program trip

type(triplet) , dimension(10,20,30) :: tar
  
contains

  type triplet
     real :: u
     real, dimension(3) :: du
     real, dimension(3,3) ::d2u
  end type triplet
  
  
end program trip
