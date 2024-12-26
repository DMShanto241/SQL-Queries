-- Where Clause

select* from 
employee_salary
where salary >= 50000;

Select * from 
employee_demographics
where gender !='female'

-- AND OR NOT -- Logical Operators --

Select * from 
employee_demographics
where birth_date > 1985-01-01
and Gender = 'male'

Select * from 
employee_demographics
where birth_date > 1985-01-01
or Gender = 'male'

select * from 
employee_demographics
where birth_date > 1985-01-01
or not Gender = 'male'

Select * from 
employee_demographics
where ( first_name = 'Leslie' and age = 44) or Age > 55

-- Like Statement --
Select * from 
employee_demographics
where first_name like 'Jer%'

Select * from 
employee_demographics
where first_name like '%ry'

Select * from 
employee_demographics
where first_name like '%er'

Select * from 
employee_demographics
where first_name like 'a__'

Select * from 
employee_demographics
where first_name like 'a___'

Select * from 
employee_demographics
where first_name like 'a__%'


Select * from 
employee_demographics
where birth_date like '1985%'