Select * from employee_demographics

Select gender, avg(age)
from employee_demographics
group by gender

Select occupation,salary
from employee_salary
group by occupation, salary

Select gender, avg(age), MIN(age),Count(age)
from employee_demographics
group by gender

-- Order By

Select *
from employee_demographics
order by gender, age Desc

Select *
from employee_demographics
order by 5, 4

