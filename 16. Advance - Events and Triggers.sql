-- Events and Triggers 

SELECT * FROM employee_salary;

SELECT * FROM employee_demographics;

Delimiter $$
Create Trigger employee_insert
	AFTER Insert ON employee_salary
    For Each Row
Begin
	INSERT INTO employee_demographics (employee_id, first_name, last_name) 
    VALUES (NEW.employee_id,NEW.first_name,NEW.last_name);
End $$
Delimiter ;

INSERT INTO employee_salary (employee_id, first_name, last_name, occupation, salary, dept_id)
VALUES(13, 'Jean-Ralphio', 'Saperstein', 'Entertainment 720 CEO', 1000000, NULL);

-- Events

DROP EVENT IF EXISTS delete_retirees;
DELIMITER $$
CREATE EVENT delete_retirees
ON SCHEDULE EVERY 30 SECOND
DO BEGIN
	DELETE
	FROM parks_and_recreation.employee_demographics
    WHERE age >= 60;
END $$

