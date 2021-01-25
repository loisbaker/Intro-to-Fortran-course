program lois_cubes
    implicit none

    integer ::  cube_num
    real    ::  side_len, surf_area, volume


    cube_num = 5
    side_len = 3.2
    surf_area = 6*side_len**2
    volume = side_len**3

    print*, "The volume of one cube is ", volume
    print*, "The area of all faces of one cube is ", surf_area
    print*, "The volume of all cubes is ", cube_num*volume
    print*, "The area of all cubes is ", cube_num*surf_area
    print*, "The surface area to volume ratio of the cubes is ", surf_area/volume

end program

