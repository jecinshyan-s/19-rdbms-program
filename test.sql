-- Test file for Question 19

SET SERVEROUTPUT ON;

DECLARE
    v_Count NUMBER;
BEGIN
    SELECT COUNT(*)
    INTO v_Count
    FROM Student;

    IF v_Count = 4 THEN
        DBMS_OUTPUT.PUT_LINE('TEST PASSED - 4 student records found.');
    ELSE
        DBMS_OUTPUT.PUT_LINE('TEST FAILED');
    END IF;
END;
/

DECLARE
    CURSOR student_cursor IS
        SELECT StudentID, StudentName, DepartmentID
        FROM Student;

    v_StudentID    Student.StudentID%TYPE;
    v_StudentName  Student.StudentName%TYPE;
    v_DepartmentID Student.DepartmentID%TYPE;
    v_Count        NUMBER := 0;
BEGIN
    OPEN student_cursor;

    LOOP
        FETCH student_cursor
        INTO v_StudentID, v_StudentName, v_DepartmentID;

        EXIT WHEN student_cursor%NOTFOUND;

        v_Count := v_Count + 1;
    END LOOP;

    CLOSE student_cursor;

    IF v_Count = 4 THEN
        DBMS_OUTPUT.PUT_LINE('TEST PASSED - Cursor fetched all records.');
    ELSE
        DBMS_OUTPUT.PUT_LINE('TEST FAILED');
    END IF;
END;
/
