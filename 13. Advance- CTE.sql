-- CTEs

With CTE_example as
(
SELECT gender, AVG(salary) avg_sal, MAX(salary) max_sal,MIN(salary) min_sal, COUNT(salary) count_sal
FROM employee_demographics dem
JOIN employee_salary sal
	ON dem.employee_id = sal.employee_id
GROUP BY gender
)
Select avg(avg_sal)
from CTE_example


WITH CTE_Example AS 
(
SELECT employee_id, gender, birth_date
FROM employee_demographics dem
WHERE birth_date > '1985-01-01'
), -- just have to separate by using a comma
CTE_Example2 AS 
(
SELECT employee_id, salary
FROM parks_and_recreation.employee_salary
WHERE salary >= 50000
)
Select *
from CTE_Example
Join CTE_Example2
	on CTE_Example.employee_id = CTE_Example2.employee_id