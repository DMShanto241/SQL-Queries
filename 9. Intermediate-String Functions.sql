-- String Functions

Select Length('Skyfall')

Select first_name, length(first_name)
from employee_demographics
order by 2

Select Upper ('Sky')
Select Lower ('Sky')

Select first_name, Upper(first_name)
from employee_demographics

Select Trim('       king        ')
Select LTrim('       king        ')
Select rTrim('       king        ')

Select first_name, Upper(first_name)
from employee_demographics

Select first_name,
left (first_name, 4), 
right(first_name, 4), 
substring(first_name, 3, 2), 
Birth_date, substring(birth_date, 6, 2) as birth_month
from employee_demographics

Select first_name, replace(first_name,'a','z')
from employee_demographics

Select first_name, locate('An',first_name)
from employee_demographics

Select first_name, last_name, Concat(first_name,' ',Last_name) as full_name
from employee_demographics