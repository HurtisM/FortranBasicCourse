program variables
    ! ak vypneme implicit none:
    ! vsetky premenne zacinajuce  i, j, k, l ,m ,n = integer
    ! vsetko ostatne = float
    implicit none
	
    ! zakladne datove typy integer (vzdy signed), real, character,
    !logical a complex
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

end program variables    