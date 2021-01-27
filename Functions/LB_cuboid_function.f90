program LB_cuboid_function
    implicit none
    real :: h, w, l, V

    h = 2.0
    w = 3.0
    l = 1.5

    V = cuboid_volume(h,w,l)
    print*, V

    contains
        function cuboid_volume(height,width,length)result(volume)

            real :: height, width, length, volume

            volume = height* width*length

        end function cuboid_volume


end program LB_cuboid_function