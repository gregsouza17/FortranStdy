program intlinked
  implicit none


  type linked_int
     integer :: i,n=0,p=0
     type(linked_int), pointer :: previous, next
  end type linked_int

  type(linked_int),target :: one, two, four, three
  type(linked_int), pointer :: nul => NULL()

  one%i = 1
  two%i = 2
  four%i = 4

  call add(two)

  three%i = 3

  call add(three)

  call link(three, four)


  call remove(two)

  write(*,*) three%previous%i
  
contains

  subroutine add(lkint)
    type(linked_int), target :: lkint
    type(linked_int), pointer :: current

    current => one

    do while(current%n == 1)
       current => current%next
    enddo 

    current%next => lkint
    lkint%previous => current

    current%n = 1
    lkint%p = 1
    
  end subroutine add

  subroutine link(first, second)
    !second should no have next or previous
    type(linked_int), target :: first,second

    if (second%p==1 .or. second%n==1) return

    if(first%n==1) then
       second%next => first%next
       first%next%previous => second
       second%n = 1
    end if
    
    second%previous => first
   
    first%next => second

    second%p = 1
    first%n = 1
    
  end subroutine link
  

  subroutine remove(alink)
    type(linked_int) , target :: alink


    if(alink%p == 1) then
       if(alink%n ==1) then
          alink%previous%next => alink%next
          alink%next%previous => alink%previous
       else
          alink%previous%n = 0

       end if
       
       
    end if

    if(alink%n == 1 .and. alink%p == 0) alink%next%p = 0
    
    nullify(alink%previous)
    nullify(alink%next)

    
  end subroutine remove
  
end program intlinked

