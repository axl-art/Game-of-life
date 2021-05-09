PROGRAM live_game

    INTEGER, PARAMETER :: N = 300, T = 500
    INTEGER, DIMENSION(N,N) :: x_i, x_f
    INTEGER point_value
    CHARACTER(20) :: filename

    open(1, File="CI.dat", status = "Old")

    DO j = 1, N
        READ(1,*) (x_i(i,j), i = 1, N)
    END DO

    DO k = 1, T
        DO i = 1, N
            x_f(1,i)=x_i(1,i)
            x_f(N,i)=x_i(N,i)
            x_f(i,1)=x_i(i,1)
            x_f(i,N)=x_i(i,N)
        END DO

        DO i = 2, N - 1
            DO j = 2, N - 1
                point_value = x_i(i+1,j)+x_i(i+1,j+1)+x_i(i+1,j-1)+x_i(i,j+1)+x_i(i,j-1)+x_i(i-1,j)+x_i(i-1,j-1)+x_i(i-1,j+1)
                IF (x_i(i,j) .EQ. 1) THEN
                    IF (point_value .LT. 2) THEN
                        x_f(i,j) = 0
                    ELSEIF ((point_value .GE. 2) .AND. (point_value .LE. 3)) THEN
                    x_f(i,j)=1
                ELSEIF (point_value .GT. 3) THEN
                    x_f(i,j)=0
                END IF
            ELSEIF (x_i(i,j).EQ.0) THEN
                IF (point_value .EQ. 3) THEN
                    x_f(i,j)=1
                ELSE
                    x_f(i,j)=0
                END IF
            END IF
        END DO
    END DO

    WRITE(filename,'(a,i0,a)') 'data',k,'.dat'
    open(2,file=filename)
        DO j = 1, N
            WRITE(2,*) ((x_f(i,j)), i=1,N)
        END DO

        DO i = 1, N
            DO j = 1, N
                x_i(i,j) = x_f(i,j)
            END DO
        END DO
    END DO

END PROGRAM