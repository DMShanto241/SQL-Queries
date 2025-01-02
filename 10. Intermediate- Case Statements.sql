-- Case statements

Select first_name, last_name, age,
	case 
		when age <= 30 then 'Young'
        when age between 31 and 50 then 'Middle Aged'
        when age >= 51 then 'Old'
	end as Age_bracket
from employee_demographics

-- Pay increase and Bonus
-- < 50000 = 5%
-- > 50000 = 7%
-- Finance_ dept = 10 % bonus

Select first_name, last_name, salary,
Case
	when salary <= 50000 then salary*1.05
    when salary > 50000 then salary*1.07
End as New_Salary,
case
	when dept_id= 6 then salary*0.1
end as bonus
from employee_salary