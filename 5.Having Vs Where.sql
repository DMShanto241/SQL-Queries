-- Having vs Where

Select gender, avg(age)
from employee_demographics
group by gender
having avg(age) > 40

Select occupation, avg(salary)
from employee_salary
where occupation like '%manager%' 
group by occupation
having avg(salary) >75000