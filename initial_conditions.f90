PROGRAM initial-conditions

    INTEGER, PARAMETER :: N = 900
    INTEGER, DIMENSION (N,N) :: CI

    !OPEN FILE
    OPEN(1, File='CI.dat')

    DO i = 1, N
        DO j = 1, N
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
    DO j = 1, N
        WRITE(*,*) (CI(i,j) , i = 1, N)
    END DO

END PROGRAM
