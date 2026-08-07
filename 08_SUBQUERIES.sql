--A subquery is a query written inside another query
EXAMPLE:
SELECT * FROM EMPLOYEE 
WHERE SALARY>(
    SELECT AVG(SALARY) FROM EMPLOYEE
);

PROBLEM1: Find employees whose salary is greater than the average salary of all employees.
QUERY:
SELECT * FROM EMPLOYEE
WHERE SALARY > (
    SELECT AVG(SALARY) FROM EMPLOYEE
);

PROBLEM2:Find the employee with the highest salary
QUERY:
SELECT* FROM EMPLOYEE
WHERE SALARY =(
    SELECT MAX(SALARY) FROM EMPLOYEE
);

PROBLEM3: Find the employee with the second-highest salary.
QUERY:
SELECT* FROM EMPLOYEE
WHERE SALARY =(
    SELECT MAX(SALARY) FROM EMPLOYEE
    WHERE SALARY < (
        SELECT MAX(SALARY) FROM EMPLOYEE
    )   
);

PROBLEM4:Find employees whose salary is less than the maximum salary of the IT department.
QUERY:
SELECT* FROM EMPLOYEE
WHERE SALARY <(
    SELECT MAX(SALARY) FROM EMPLOYEE
    WHERE DEPARTMENT = 'IT'
);  

PROBLEM5:Find employees whose salary is greater than the minimum salary of the HR department.
QUERY:
SELECT* FROM EMPLOYEE 
WHERE SALARY>(
    SELECT MIN(SALARY) FROM EMPLOYEE 
    WHERE DEPARTMENT ='HR'
);