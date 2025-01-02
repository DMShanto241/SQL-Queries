--  Joins
-- Inner Join

Select * from
employee_demographics

Select * from 
employee_salary

Select * 
from employee_demographics as ed
inner join employee_salary as es
on ed.employee_id = es.employee_id

Select ed.employee_id, age, occupation
from employee_demographics as ed
inner join employee_salary as es
on ed.employee_id = es.employee_id

-- Outer Join
Select * 
from employee_demographics as ed
left join employee_salary as es
on ed.employee_id = es.employee_id

Select * 
from employee_demographics as ed
Right join employee_salary as es
on ed.employee_id = es.employee_id

-- Self Join

Select * 
from employee_salary emp1
join employee_salary emp2
on emp1.employee_id +1 = emp2.employee_id


Select emp1.employee_id as emp_gifting,
	emp1.first_name as first_name_gifting,
    emp1.last_name as last_name_gifting,
    emp2.employee_id as emp_name,
	emp2.first_name as first_name,
    emp2.last_name as last_name
from employee_salary emp1
join employee_salary emp2
on emp1.employee_id +1 = emp2.employee_id

-- Joining Multiple tables 

Select *
from employee_demographics as ed
inner join employee_salary as es
on ed.employee_id = es.employee_id
inner join parks_departments pd
on es.dept_id = pd.department_id


Select * 
from parks_departments