program PE002

    implicit none
    integer:: n, sum, a = 0, a1 = 1, a2 = 1

    ! upper limit 
    n = 4000000
    sum  = 0
    do while(a < n)
        a1 = a2
        a2 = a
        a = a1 + a2 
        if (mod(a,2) == 0) then
            sum = sum + a
        end if          
    end do       

    print *, sum

end program PE002    