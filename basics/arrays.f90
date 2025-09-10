 program arrays

    implicit none
    
    integer, dimension(15) :: onedim
    integer, dimension(10) :: resultarray
    integer, dimension(10, 10) :: twodim
    integer :: i, j
    real, dimension(5) :: realarray
    real :: randomReal
    print *, "Start"
    onedim(1) = 999

    print *, onedim(1)
    print *, twodim(4,8)

    ! Zero out the array
    do i=1, 15
        onedim(i) = 0
    end do

    !print out the array
    do i=1, 15
        write (*, '(i3)', advance = 'no') onedim(i)
    end do

    do i=1, 10
        do j =1, 10
            call random_number(randomReal)
            twodim(i, j) = (randomReal * 100)
        end do    
    end do

    do i=1, 10
        do j =1, 10
            write (*, '(i5)', advance = 'no') twodim(i, j)
        end do 
        print *, ''   
    end do

    print *, realarray
end program arrays