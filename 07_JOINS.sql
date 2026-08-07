--A JOIN in SQL is used to combine data from two or more tables based on a related column between them.

TYPES OF JOINS:
1. INNER JOIN: Returns records that have matching values in both tables.
SYNTAX:
SELECT column_name(s)
FROM table1 
INNER JOIN table2
ON table1.column_name = table2.column_name;

2. LEFT JOIN : Returns all records from the left table, and the matched records from the right table. If there is no match, NULL values are returned for columns from the right table.
SYNTAX:
SELECT column_name(s)   
FROM table1
LEFT JOIN table2
ON table1.column_name = table2.column_name;

3. RIGHT JOIN : Returns all records from the right table, and the matched records from the left table. If there is no match, NULL values are returned for columns from the left table.
SYNTAX:
SELECT column_name(s)
FROM table1
RIGHT JOIN table2
ON table1.column_name = table2.column_name;

4. FULL OUTER JOIN : Returns all records when there is a match in either left or right table. If there is no match, NULL values are returned for columns from the table without a match.
SYNTAX:
SELECT column_name(s)
FROM table1
FULL OUTER JOIN table2
ON table1.column_name = table2.column_name; 

PROBLEM1: Find the names of employees along with their department names.
QUERY:
SELECT e.NAME, d.DEPARTMENT_NAME
FROM employees e
LEFT JOIN departments d
 ON e.DEPARTMENT_ID = d.DEPARTMENT_ID;   

PROBLEM2: Find the highest-paid employee from each department.
QUERY:
SELECT d.DEPARTMENT_NAME, e.NAME, e.SALARY
FROM employees e
INNER JOIN departments d 
ON e.DEPARTMENT_ID = d.DEPARTMENT_ID
WHERE (e.DEPARTMENT_ID, e.SALARY) IN (
    SELECT DEPARTMENT_ID, MAX(SALARY)
    FROM employees
    GROUP BY DEPARTMENT_ID
);

PROBLEM3:Which employees earn MORE than their departments Average Salary
SELECT E.NAME, E.SALARY
FROM EMPLOYEE E
WHERE E.SALARY > (
    SELECT AVG(E2.SALARY)
    FROM EMPLOYEE E2
    WHERE E2.DEPARTMENT = E.DEPARTMENT
);

PROBLEM4: Find the total salary paid to each department along with the department name.
QUERY:
SELECT d.DEPARTMENT_NAME, SUM(e.SALARY) AS TOTAL_SALARY
FROM employees e
INNER JOIN departments d
ON e.DEPARTMENT_ID = d.DEPARTMENT_ID
GROUP BY d.DEPARTMENT_NAME;