 program arrays
    implicit none
    ! 1D integer array
    integer, dimension(15) :: onedim
    integer :: resultarray(100)
    ! 1D array could be declare using custom lower and upper index bounds:
    integer :: array1(-5:5)
    ! allocatable 1D array
    integer, allocatable :: alocarr(:)

    ! 2D integer array
    integer, dimension(10, 10) :: twodim
    ! 1D real array
    real, dimension(5) :: realarray

    real :: randomReal
    integer :: i, j
    integer :: randomInt
    integer(kind=8) :: k

    logical :: YesNo
    
    !operations with arrays
    print *, "Start"
    print *, huge(k)
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

    onedim = (/2,4,6,8,10,12,14,16,18,20,22,24,26,28,30/)
    print *, onedim(1:15)

    onedim(:) = 0  ! set all element to zero 
    print *, "back to zero..."
    print "(15(I5))", onedim

    onedim(1:7) = 23 !set first 7 elements to 23
    print *, "Set first 7 elements to 23"
    print "(15(I5))", onedim

    onedim = [(i, i =1, 15)]  !Implied do loop constructor
    print *, "Back to 1 to 15.."
    print "(15(I5))", onedim

    ! Zero out the array but using function size - returns len of onedim array
    do i=1, size(onedim)
        onedim(i) = 0
    end do
    print *, "and again back to zero..."
    print "(15(I5))", onedim

    ! array constructor:
    array1(:) = 5
    print "(11(I5))", array1
    array1 = [(i, i =-5, 5)] 
    print "(11(I5))", array1  ! be carefull with custom index boundaries -5 to 5 is 11 :-D

    ! set the random values in the array
    do i = 1, size(resultarray)
        call random_number(randomReal)
        randomInt = (randomReal * 1000)  ! conversion from  real to integer , not necessary it can be use like in @D array bellow
        resultarray(i) = randomInt
    end do     
    print "(100(I5))", resultarray

    ! Intrinsic functions
    ! count; returns number of values which meets requirement
    k = count(resultarray > 100)
    print *, "Number of elements greather than 100: ", k

    ! maxval, returns max value of array
    k = maxval(resultarray)
    print *, "Maximum value in array: ", k

    ! minval, returns min value of array
    k = minval(resultarray)
    print *, "Minimum value in array: ", k

    ! sum, returns sum of elements in array
    k = sum(resultarray)
    print *, "Sum of elements in array: ", k

    ! product, returns product of all elements in array
    k = product(resultarray(1:10))      ! product of first 10 elements only because of exceed int max limit
    print *, "Product of elements in array: ", k

    ! all, returns True if ALL elements meets requirement
    YesNo = all(resultarray > 0)
    print *, "Are all elementts in array greater than 0? ", YesNo

    ! any, returns True if ANY of elements meets requirement
    YesNo = any(resultarray > 1000)
    print *, "Are any elementts in array greater than 1000? ", YesNo
    print *, ''

    ! two dimensions arrays
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
    ! size of two and more dim arrays return the number of elements, not cout fo rows and columns
    print *, '' 
    print *, 'Size of 2D array is: ', size(twodim)
    ! sum of 2D array
    print *, 'Sum of elements in 2D array is: ', sum(twodim)
    ! maxval; return max values fro columns if DIM = 1 or rows if DIM = 2    
    alocarr = maxval(twodim, DIM=1)
    print "(A,(10(I5)))", 'Max value for each column: ', alocarr
    alocarr = maxval(twodim, DIM=2)
    print "(A,(10(I5)))", "Max value for each row: ", alocarr
    ! also can get sum of columns and rows
    alocarr = sum(twodim, DIM=1)
    print "(A,(10(I5)))", 'Sum for each column: ', alocarr
    alocarr = sum(twodim, DIM=2)
    print "(A,(10(I5)))", "Sum for each row: ", alocarr
    
    print *, ''


    print *, realarray
    print *, "END. Have a nice day.."
end program arrays