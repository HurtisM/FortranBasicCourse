program std_input
    implicit none
    integer :: userAge

    print *, "Good morning"
    write (*, "(A)", advance="no") "Please enter your age:"
    read(*, *) userAge
    print "(A, i5.3)", "You entered: ", userAge
    write (*, "(A, i5.3)") "You entered: ", userAge
    print *, "Program ending"




end program std_input
