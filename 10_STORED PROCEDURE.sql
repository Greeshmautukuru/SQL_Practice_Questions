--A Stored Procedure is a set of SQL statements stored inside the database and executed whenever we call it.

EXAMPLE:
DELIMITER //

CREATE PROCEDURE get_employees()
BEGIN
    SELECT * FROM EMPLOYEE;
END //

DELIMITER ;

PROBLEM1: Create a stored procedure to get all employees from a specific department.
QUERY:
DELIMITER //
CREATE PROCEDURE get_employees_by_department(IN dept_name VARCHAR(50))
BEGIN
    SELECT * FROM EMPLOYEE
    WHERE DEPARTMENT = dept_name;
END //
DELIMITER ;

PROBLEM2: Create a stored procedure to get the total salary paid to a specific department.
QUERY:
DELIMITER //
CREATE PROCEDURE get_total_salary_by_department(IN dept_name VARCHAR(50))
BEGIN
    SELECT SUM(SALARY) AS TOTAL_SALARY
    FROM EMPLOYEE WHERE DEPARTMENT = dept_name;
END //
DELIMITER ;

PROBLEM3: Create a stored procedure to get the employee with the highest salary in a specific department.
QUERY:
DELIMITER //
CREATE PROCEDURE get_highest_paid_employee_by_department(IN dept_name VARCHAR(50))
BEGIN
    SELECT * FROM EMPLOYEE
    WHERE DEPARTMENT = dept_name
    AND SALARY = (
        SELECT MAX(SALARY) FROM EMPLOYEE
        WHERE DEPARTMENT = dept_name
    );
END //
DELIMITER ;

PROBLEM4: Create a stored procedure to get the average salary of a specific department.
QUERY:
DELIMITER //
CREATE PROCEDURE get_average_salary_by_department(IN dept_name VARCHAR(50))
BEGIN
    SELECT AVG(SALARY) AS AVERAGE_SALARY
    FROM EMPLOYEE WHERE DEPARTMENT = dept_name;
END //
DELIMITER ;

PROBLEM5: Create a stored procedure to get the employees whose salary is greater than a specified amount.
QUERY:
DELIMITER //
CREATE PROCEDURE get_employees_by_salary(IN min_salary DECIMAL(10,2))
BEGIN
    SELECT * FROM EMPLOYEE
    WHERE SALARY > min_salary;
END //
DELIMITER ;

PROBLEM6: Create a stored procedure to get the employees whose salary is less than a specified amount.
QUERY:
DELIMITER //
CREATE PROCEDURE get_employees_below_salary(IN max_salary DECIMAL(10,2))
BEGIN
    SELECT * FROM EMPLOYEE
    WHERE SALARY < max_salary;
END //  
DELIMITER ;


