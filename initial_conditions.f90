PROGRAM initial_conditions

    INTEGER, PARAMETER :: N = 300
    INTEGER, DIMENSION (N,N) :: CI

    !OPEN FILE
    OPEN(1, File='CI.dat')

    DO i = 1, N
        DO j = 1, N
            CI(i,j) = 0
        END DO      
    END DO

    CI(150,150)=1
    CI(150,151)=1
    CI(152,151)=1
    CI(151,153)=1
    CI(150,154)=1
    CI(150,155)=1
    CI(150,156)=1

    !EXIT
    DO j = 1, N
        WRITE(*,*) (CI(i,j) , i = 1, N)
    END DO

END PROGRAM
