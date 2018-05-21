program st

  implicit none

  type stack
     integer :: index
     integer, allocatable :: cont(:)
  end type stack
  

  type(stack) :: tst
  integer :: i
  
  allocate(tst%cont(4))
  
  forall(i=1:4)
     tst%cont(i) = i
  end forall

  tst%index = 4

  tst = add_elem(tst, 5)

  tst = add_elem(tst,6)
  
  write(*,*) tst%index, tst%cont

contains

  function add_elem(astack, elem)
    type(stack) :: astack, add_elem
    integer :: elem,i, index
    
    index = astack%index+1

    add_elem%index = index

    allocate(add_elem%cont(index))

    forall(i=1:(index-1))
       add_elem%cont(i) = astack%cont(i)
    end forall
    
    
    add_elem%cont(index) = elem
  
  end function add_elem
  
  
end program st
