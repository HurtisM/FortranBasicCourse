program PE003

    implicit none
    integer(kind=8):: n
    integer:: lpf, divisor

    
    n = 600851475143_8
    lpf = 0
    divisor = 2

    do while(divisor <= n)
        if (mod(n,divisor) == 0) then
            lpf = divisor
            n = n / divisor
        else
            divisor = divisor + 1    
        end if          
    end do       

    print *, lpf
  
end program PE003