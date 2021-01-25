program arrays_ex
    implicit none

    real, dimension(3)    :: posA, posB, posC, posD, distancesD
    real, dimension(3,3)  :: rot_mat
    real                  :: pi, theta, distD
    real, dimension(3,3)  :: positionsA, positionsB, positionsC, positionsD
    
    pi = 3.14159
    posA = (/1,2,1/)
    posB = posA + (/3.0,-4.0,1.0/)
    posC = posB*2
    theta = pi/4
    rot_mat(1,:) = (/cos(theta), -sin(theta), 0.0/)
    rot_mat(2,:) = (/sin(theta), cos(theta), 0.0/)
    rot_mat(3,:) = (/0.0, 0.0, 1.0/)

    posD = matmul(rot_mat,posC)

    distD = sqrt(dot_product(posD,posD))
    print*, "Position D = ", posD
    print*, "Distance to origin = ", distD

    ! Now with 3 positions A
    positionsA(:,1) = (/1,2,1/)
    positionsA(:,2) = (/-1,0,1/)
    positionsA(:,3) = (/-3.0,-2.0,-2.5/)
    ! Third one needs decimal places so the thing we're assigning to positionsA has one type, not mixed
    
    positionsB(:,1) = positionsA(:,1) + (/3,-4,1/)
    positionsB(:,2) = positionsA(:,2) + (/3,-4,1/)
    positionsB(:,3) = positionsA(:,3) + (/3,-4,1/)

    positionsC = positionsB*2
    print*, "A row 1", positionsA(1,:)
    print*, "A row 2", positionsA(2,:)
    print*, "A row 3", positionsA(3,:)

    print*, "B row 1", positionsB(1,:)
    print*, "B row 2", positionsB(2,:)
    print*, "B row 3", positionsB(3,:)

    print*, "C row 1", positionsC(1,:)
    print*, "C row 2", positionsC(2,:)
    print*, "C row 3", positionsC(3,:)

    positionsD = matmul(rot_mat,positionsC)
    ! Could also do this with the transposed matrix, one column at a time

    distancesD(1) = sqrt(dot_product(positionsD(:,1),positionsD(:,1)))
    distancesD(2) = sqrt(dot_product(positionsD(:,2),positionsD(:,2)))
    distancesD(3) = sqrt(dot_product(positionsD(:,3),positionsD(:,3)))

    print*, "Distances to D points are", distancesD

end program