-- Stored Procedures

Select * 
from employee_salary
where salary> 50000;

Create procedure Large_Salaries()
Select * 
from employee_salary
where salary> 50000;

Create procedure Large_Salaries2()
Select * 
from employee_salary
where salary> 50000;
Select * 
from employee_salary
where salary>= 10000;

Delimiter $$
Create procedure Large_Salaries3()
Begin 
	Select * 
	from employee_salary
	where salary> 50000;
	Select * 
	from employee_salary
	where salary>= 10000;
end $$
Delimiter ;

Call Large_Salaries3()


DELIMITER $$
CREATE PROCEDURE Large_Salaries4(huggymuffin INT)
BEGIN
    SELECT salary
    FROM employee_salary
    WHERE employee_id = huggymuffin;
END $$
DELIMITER ;

Call Large_Salaries4(1)
