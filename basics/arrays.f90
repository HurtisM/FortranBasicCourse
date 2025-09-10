 program arrays
    implicit none
    ! 1D integer array
    integer, dimension(15) :: onedim
    integer :: resultarray(10)
    ! 2D integer array
    integer, dimension(10, 10) :: twodim
    ! 1D real array
    real, dimension(5) :: realarray

    real :: randomReal
    integer :: i, j

    print *, "Start"
    ! initialize first indice of array
    onedim(1) = 999
    print *, onedim(1)
   
    ! Zero out the array
    do i=1, 15
        onedim(i) = 0
    end do

    !print out the array using loop
    do i=1, 15
        write (*, '(i3)', advance = 'no') onedim(i)
    end do

    onedim = [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15]  ! Array constructor
    print *, ''
    print *, onedim(1:10)  ! print out the array
    print *, onedim(10:1:-1)  !print out the array in reverse

    onedim(:) = 0  ! set all element to zero 
    print *, "back to zero..."
    print "(15(I5))", onedim

    onedim(1:7) = 23 !set first 7 elements to 23
    print *, "Set first 7 elements to 23"
    print "(15(I5))", onedim

    onedim = [(i, i =1, 15)]  !Implied do loop constructor
    print *, "Back to 1 to 15.."
    print "(15(I5))", onedim


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