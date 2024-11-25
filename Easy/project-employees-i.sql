-- SQL solution for Project Employees I
-- Write an SQL query that reports the average experience years of all the employees for each project, rounded to 2 digits.
select project_id, round(avg(experience_years), 2) as average_years
from Project p
join Employee e on p.employee_id=e.employee_id
group by project_id;

