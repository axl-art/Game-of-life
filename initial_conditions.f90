PROGRAM initial_conditions

INTEGER, PARAMETER :: N = 300
INTEGER, DIMENSION(N,N) :: CI

open(1,File='CI.dat')

    DO i = 1, N
        DO j = 1, N
            CI(i,j) = 0
        END DO
    END DO

    !initial conditions
    CI(140,140)=1
    CI(140,141)=1
    CI(142,141)=1
    CI(141,143)=1
    CI(140,144)=1
    CI(140,145)=1
    CI(140,146)=1

    DO j = 1, N
        WRITE(1,*) (CI(i,j), i = 1, N)
    END DO

END PROGRAM
