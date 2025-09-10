! komentar vzdy zacina ! moze zacinat na hociktorej pozicii v riadku
! vid line 6
! 
program constants
	
integer, parameter:: numMonths = 12 ! slovo parameter dfinuje konstantu
! konstanta moze byt priradena do premennej
integer:: tempInt = 12


print *, numMonths
! numMonths = 48  - v tomto pripade vypise kompilator chybu
tempInt=numMonths
print *, tempInt

end program constants
