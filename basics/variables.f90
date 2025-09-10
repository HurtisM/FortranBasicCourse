program variables
	! ak vypneme implicit none:
	! vsetky premenne zacinajuce  i, j, k, l ,m ,n = integer
	! vsetko ostatne = float
	implicit none
	
	! zakladne datove typt integer (vzdy signed), real, character,
	!logical a complex
	integer :: int1
	real :: float1
	character :: middleName
	logical :: trueFalse
	complex :: euler
	
	
	!integer a real mozu byt roznt typy (ako v C/C++)
	! Kind = x , kde x je pocet bytov
	integer(kind=2) :: hwordInt
	integer(kind=4) :: dwordInt
	integer(kind=8) :: qwordInt
	
	real(kind=4)::aFloat
	real(kind=8)::aDouble
	real(kind=16)::aLongDouble
	
	! takisto mozeme definovat max dlzku premennej typu character:
	character(len=80) :: full_line
	character(len=15) :: first_name
	
	! inicializacia premennych
	int1 = 45
	middleName = "Lexa"
	trueFalse = .TRUE.
	first_name= "Prve Meno ale je dlhe"
		
	!print *, premenna vypise  premennu, 
	!(huge)premenna vypise jej max hodnotu
	print *, "Premenne"
	print *, huge(hwordInt)
	print *, huge(dwordInt)
	print *, huge(qwordInt)
	
	print *, huge(aFloat)
	print *, huge(aDouble)
	print *, huge(aLongDouble)
	
	!vypis inicializovanej a neinicializovanej premennej
	! neinicializovana vypise lubovolnu hodnotu v range premennej
	print *, int1
	print *, float1
	print *, first_name
	
	
end program variables
