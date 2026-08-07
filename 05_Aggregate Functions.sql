--Aggregate functions perform calculations on multiple rows and return a single value.

1.count():--Counts the number of rows
2.sum():--Calculates the sum of a numeric column
3.avg():--Calculates the average of a numeric column
4.min():--Finds the minimum value in a column
5.max():--Finds the maximum value in a column

problem1: Find the total number of employees in the company.
QUERY:
SELECT COUNT(*) AS total_employees
FROM employees;

PROBLEM2:Find the total salary paid to all employees.
Table:employees
Column:salary
QUERY:
SELECT SUM(SALARY) AS TOTAL_SALARY 
FROM employees;

problem3:Find the average salary of employees in the company.
QUERY:
SELECT AVG(SALARY) AS AVG_SALARY
FROM employees;

problem4:Find the minimum salary of employees in the company.
QUERY:
SELECT MIN(SALARY) AS MIN_SALARY
FROM employees;

problem5:Find the maximum salary of employees in the company.
QUERY:  
SELECT MAX(SALARY) AS MAX_SALARY 
FROM employees;

