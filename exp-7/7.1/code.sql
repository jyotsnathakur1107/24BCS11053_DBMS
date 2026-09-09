DECLARE
    CURSOR c_staff IS
        SELECT Name, Salary
        FROM Staff
        ORDER BY Salary DESC
        FETCH FIRST 5 ROWS ONLY;

    v_name   Staff.Name%TYPE;
    v_salary Staff.Salary%TYPE;

BEGIN
    OPEN c_staff;

    LOOP
        FETCH c_staff INTO v_name, v_salary;

        EXIT WHEN c_staff%NOTFOUND;

        DBMS_OUTPUT.PUT_LINE(
            'Name: ' || v_name || '  Salary: ' || v_salary
        );
    END LOOP;

    CLOSE c_staff;
END;
/