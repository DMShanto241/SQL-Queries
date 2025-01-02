-- Unions

Select first_name, last_name 
from employee_demographics
Union
select first_name, last_name
from employee_salary

Select first_name, last_name 
from employee_demographics
Union all 
select first_name, last_name
from employee_salary

Select first_name, last_name, 'old Man' as label
from employee_demographics
where age > 40 and gender = 'Male'
Union
Select first_name, last_name, 'old Lady' as label
from employee_demographics
where age > 40 and gender = 'Female'
Union
select first_name, last_name, ' Highly Paid Employee' as Label
from employee_salary
where salary>70000
order by first_name, Last_name