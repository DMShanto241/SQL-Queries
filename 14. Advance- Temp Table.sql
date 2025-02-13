-- Temporary Tables

Create temporary table temp_table
(first_name varchar(50),
last_name varchar(50),
favorite_incident varchar(100)
);

Select * from 
temp_table

Insert into temp_table
values('DM', 'Shanto', 'Yearly Bonus');

Create temporary table salary_over_50k
select * from 
employee_salary
where salary >=50000;

Select * from salary_over_50k