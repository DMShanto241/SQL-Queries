-- Subqueries

Select * 
from employee_demographics
where employee_id in 
	(select employee_id
		from employee_salary
        where dept_id = 1)
        
Select first_name, salary,
(select avg(salary)
from employee_salary)
from employee_salary

Select gender, avg(age), max(age), min(age), count(age)
from employee_demographics
group by gender

Select avg(max_age)
from
(Select gender, 
avg(age) as avg_age, 
max(age) as max_age, 
min(age) as min_age,
count(age)
from employee_demographics
group by gender) as agg_table
