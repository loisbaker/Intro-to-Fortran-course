program main_program
    
    use statistical_moments
    use analysis
    implicit none

    real, dimension(10) :: array1
    real, dimension(5)  :: array2
    

    array1 = (/1.0,2.0,3.0,4.0,5.0,6.0,7.0,8.0,9.0,10.0/)
    array2 = (/1.01,1.00,0.99,1.02,0.98/)
    
    call stats_analyser(array1)

    call stats_analyser(array2)
    



end program main_program