1.CREATE DATABASE 
</> SQL :
CREATE DATABASE my_database;
 
2.USE DATABASE
</> SQL :
USE my_database;

3.CREATE TABLE
</> SQL :   
CREATE TABLE TABLE_NAME (
    column1_name DATA_TYPE,
    column2_name DATA_TYPE,
    column3_name DATA_TYPE,
    ...
);

4. INSERT DATA
</> SQL :   
INSERT INTO TABLE_NAME (column1_name, column2_name, column3_name, ...)
VALUES (value1, value2, value3, ...);   

5.SELECT DATA
</> SQL :
SELECT column1_name, column2_name, column3_name, ...
FROM TABLE_NAME
; 
FOR GETTING ALL COLUMNS USE * INSTEAD OF COLUMN NAMES LIKE :
SELECT * FROM TABLE_NAME;

5.UPDATE DATA
</> SQL :   
UPDATE TABLE_NAME
SET column1_name = new_value1, column2_name = new_value2, ...   
WHERE condition;        

6.ALTER TABLE
</> SQL :
ALTER TABLE TABLE_NAME
ADD column_name DATA_TYPE;

7. DELETE DATA
</> SQL :
DELETE FROM TABLE_NAME
WHERE condition;

8. DROP TABLE
</> SQL :
DROP TABLE TABLE_NAME;

9. DROP DATABASE
</> SQL :
DROP DATABASE my_database;

10.TRUNCATE TABLE
</> SQL :
TRUNCATE TABLE TABLE_NAME;

