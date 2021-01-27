program LB_swap_exercise
    implicit none

    integer :: int1, int2
    real, dimension(5) :: real_array_in

    real_array_in = (/1,2,3,4,5/)
    int1 = 6
    int2 = 7
    print*, "Array going in:", real_array_in
    print*, "Indices going in:", int1, int2
    call swap(int1,int2,real_array_in)

    print*, "Array coming out:", real_array_in

    contains

        subroutine swap(arg1,arg2,real_array)

            integer :: arg1, arg2
            real :: temp
            real, dimension(5) :: real_array

            arg1 = mod(arg1,size(real_array))
            arg2 = mod(arg2,size(real_array))
            temp = real_array(arg1)
            real_array(arg1) = real_array(arg2)
            real_array(arg2) = temp

        end subroutine swap

end program LB_swap_exercise