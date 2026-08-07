-- Comparison operators are used to compare values.
--= (Equal)
--!= (Not Equal)
-- > (Greater Than)
-- < (Less Than)
-->= (Greater Than or Equal)
-- <= (Less Than or Equal)

--SELECT *
FROM employees
WHERE salary = 50000;

--SELECT *
FROM employees
WHERE salary > 40000;

-- SELECT *
FROM employees
WHERE salary < 60000;

--SELECT *
FROM employees
WHERE salary >= 50000;

-- SELECT *
FROM employees
WHERE salary <= 50000;

-- Logical operators are used to combine multiple conditions.
--BY USING AND, OR, and NOT operators.

SELECT *
FROM employees
WHERE department = 'IT'
AND salary > 40000;

SELECT *
FROM employees
WHERE department = 'IT'
OR salary > 40000;

SELECT *
FROM employees
WHERE NOT department = 'IT';

-- IN and BETWEEN are used to filter values within a given range.

--IN :
</> SQL 
SELECT *
FROM employees
WHERE department IN ('IT', 'HR');

--BETWEEN :
</> SQL
SELECT *
FROM employees
WHERE salary BETWEEN 40000 AND 60000;

--LIKE :it is used to search for a specific pattern in text.
</> SQL
SELECT * FROM EMPLOYEE
WHERE NAME LIKE 'A%'; -- Names starting with 'A'
