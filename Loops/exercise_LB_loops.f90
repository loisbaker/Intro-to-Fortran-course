program exercise_LB_loops

    implicit none
    ! Define variables
    integer ::  counter
    real    ::  real1, real2, diff, n



! Fizzbuzz
do counter=1, 20, 1

    if (mod(counter,3) == 0 .and. mod(counter,5) == 0) then
        print*, "FizzBuzz"
    else if (mod(counter,3) == 0) then
    ! Brackets seem to be important here
        print*, "Fizz"
    else if (mod(counter,5) == 0) then
       print*, "Buzz"
    else 
        print*, counter
    end if
end do

    ! Sum
    diff = 10
    real1 = 0
    n = 1

    do while (diff > 0.0001)
    ! Brackets seem to be important here
        real2 = real1
        real1 = real1 + 0.5**n
        n = n+1
        diff = abs(real1 - real2)
    end do

    print*, real1

end program exercise_LB_loops