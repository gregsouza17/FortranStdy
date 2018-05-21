program em
  implicit none
  type emfield
     real, allocatable :: str(:,:)
  end type emfield

  type(emfield) :: field
  integer :: i,j

  allocate(field%str(1:4, 1:6))
  
  forall(i=1:4 , j =1:6)
     field%str(i,j) = i +4*(j-1)
  end forall

  field = expand(field)
  write(*,*) shape(field%str)

  field%str =  reshape(field%str, (/6,9/))

  write(*,*) field%str(1,1)

contains
  function expand(field)
    type(emfield) :: field, expand

    integer :: i,j
    
    allocate(expand%str(0:5, 0:8))

    forall(i=1:4, j=1:6)
       expand%str(i,j) = field%str(i,j)
    end forall
    
  end function expand

end program em
