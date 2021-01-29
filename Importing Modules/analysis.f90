module analysis
    
    use statistical_moments
    implicit none

    contains 

        subroutine stats_analyser(array1)

            real, dimension(:) :: array1
            real               :: mean1, std1

            mean1 = mean(array1)
            std1 = standard_deviation(array1)

            print*, "The mean of the array is" , mean1, "and the standard deviation is ", std1

        end subroutine



end module analysis