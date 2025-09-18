program PE001
    
    implicit none
	   
    integer :: sum, start
  
    sum = 0
    start = 3
    do while (start < 1000)
        sum = sum + start
        start = start + 3
    end do
    start = 5
    do while (start < 1000)
        sum = sum + start
        start = start + 15
    end do
    start = 10
    do while (start < 1000)
        sum = sum + start
        start = start + 15
    end do

    print *, sum

end program PE001   