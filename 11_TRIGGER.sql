--A Trigger is a SQL program that automatically executes when a specific event occurs on a table.
Example:
DELIMITER //
CREATE TRIGGER before_employee_insert AS
BEFORE INSERT
ON EMPLOYEE
FOR EACH ROW
BEGIN
    IF NEW.SALARY < 0 THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Salary cannot be negative';
    END IF;
END //

PROBLEM1:Create a trigger that automatically logs a new employee after INSERT
QUERY:
DELIMITER//
CREATE TRIGGER after_employee_insert
AFTER  INSERT
FOR EACH ROW
BEGIN 
    INSERT INTO EMPLOYEE_LOG 
    VALUES(CONCAT('New employee added: ', NEW.NAME, ' with salary: ', NEW.SALARY));
END //
DELIMITER;

PROBLEM2:Create a trigger that automatically records every DELETE operation
QUERY:
DELIMITER //
CREATE TRIGGER trigger_delete
AFTER DELETE ON EMPLOYEE
FOR EACH ROW
BEGIN
    INSERT INTO EMPLOYEE_LOG
    VALUES (
        CONCAT('Employee ', OLD.NAME, ' was deleted')
    );
END //

DELIMITER ;

