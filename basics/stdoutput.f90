program std_output
character(15):: helloWorld = "Hello world!"
character(12):: string1 = "Hello"
character(12):: string2 = "world"

integer::myInt1 = 876
integer::myInt2 = 564
integer::myInt3 = 658
integer::myInt4 = 673



print *, "Hello world!"
print *, helloWorld
print *, string1
print *, string2

!Acii strings: repeat /A/width
print "(A8)", helloWorld
print "(2A2)", string1, string2
print "(A2, A5)", string1, string2
print "(A2, 1X, A5)", string1, string2
write (*,*) "Skuska"
! print of integers
print *, 123
print "(I9.3)", 123
print "(4(I6.4))", myInt1, myInt2, myInt3, myInt4
end program std_output

