GROUP BY:-GROUP BY is used to combine rows with the same values into groups and perform calculations on each group
SYNTAX:
SELECT column_name, aggregate_function(column_name)
FROM table_name
GROUP BY column_name;

HAVING:-HAVING is used to filter groups based on a condition after the GROUP BY .
SYNTAX:
SELECT column_name, aggregate_function(column_name)
FROM table_name 
GROUP BY column_name
HAVING condition;

PROBLEM1: Find the total salary paid to each department.
QUERY:  
SELECT DEPARTMENT ,SUM(SALARY) AS TOTAL_SALARY 
FROM employees
GROUP BY DEPARTMENT;

problem2: Find the average salary of employees in each department.
QUERY:
SELECT DEPARTMENT,AVG(SALARY) AS AVG_SALARY
FROM employees 
GROUP BY DEPARTMENT;

PROBLEM3: Find the minimum salary of employees in each department.
QUERY:
SELECT DEPARTMENT,MIN(SALARY) AS MIN_SALARY 
FROM employees 
GROUP BY DEPARTMENT;

PROBLEM4: Find the maximum salary of employees in each department.
QUERY:
SELECT DEPARTMENT,MAX(SALARY) AS MAX_SALARY
FROM employees
GROUP BY DEPARTMENT;    

PROBLEM5:Find departments where salary difference between highest and lowest salary is greater than 40000.
QUERY:
SELECT DEPARTMENT, MAX(SALARY) - MIN(SALARY) AS SALARY_DIFFERENCE
FROM employees
GROUP BY DEPARTMENT
HAVING MAX(SALARY) - MIN(SALARY) > 40000;

PROBLEM6: Find departments where average salary is greater than 50000.
QUERY:
SELECT DEPARTMENT, AVG(SALARY) AS AVG_SALARY
FROM employees      
GROUP BY DEPARTMENT
HAVING AVG(SALARY) > 50000;

