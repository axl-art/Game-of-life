PROGRAM initial-conditions

    INTEGER CI(900,900)
    
    !OPEN FILE
    open(1, File='CI.dat')

    DO i = 1, 900
        DO j = 1, 900
            CI(i,j) = 0
        END DO      
    END DO

    CI(450,450) = 1
    CI(450,450) = 1
    CI(450,450) = 1
    CI(450,450) = 1
    CI(450,450) = 1
    CI(450,450) = 1
    CI(450,450) = 1

    !EXIT
    DO j = 1, 900
        WRITE(*,*) (CI(i,j) , i = 1, 900)
    END DO

END PROGRAM
