-- SQL solution for The Number of Employees Which Report to Each Employee
-- For this problem, we will consider a manager an employee who has at least 1 other employee reporting to them. Write a solution to report the ids and the names of all managers, the number of employees who report directly to them, and the average age of the reports rounded to the nearest integer.
select e1.employee_id, e1.name, count(e2.reports_to) as reports_count, round(avg(e2.age), 0) as average_age
from Employees e1
INNER JOIN Employees e2 on e2.reports_to = e1.employee_id
group by e1.employee_id, e1.name
order by e1.employee_id;