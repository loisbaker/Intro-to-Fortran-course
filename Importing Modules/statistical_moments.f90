module statistical_moments
    implicit none

    contains
        function mean(array1)result(mean1)
            real, dimension(:) :: array1
            real                :: mean1

            mean1 = sum(array1)/size(array1)

        end function

        function standard_deviation(array1)result(std1)
            real, dimension(:) :: array1
            real               :: std1, temp
            integer            :: i

        temp = 0
        do i = 1,size(array1)
            temp = temp + array1(i)**2
        end do    

        std1 = sqrt(temp/size(array1) - mean(array1)**2)

        end function

end module statistical_moments