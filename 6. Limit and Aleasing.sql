-- Limit and Aleasing 

Select *
from employee_demographics
order by age desc
limit 3

Select *
from employee_demographics
order by age desc
limit 3


Select *
from employee_demographics
order by age desc
limit 2, 1

-- Aleasing

Select gender, avg(age) as aa
from employee_demographics
group by gender
having aa > 40