-- SQL solution for Department Top Three Salaries
-- A company's executives are interested in seeing who earns the most money in each of the company's departments. A high earner in a department is an employee who has a salary in the top three unique salaries for that department.

-- Write a solution to find the employees who are high earners in each of the departments.

WITH employee_department AS
    (
    SELECT d.id, 
        d.name AS Department, 
        salary AS Salary, 
        e.name AS Employee, 
        DENSE_RANK()OVER(PARTITION BY d.id ORDER BY salary DESC) AS rnk
    FROM Department d
    JOIN Employee e
    ON d.id = e.departmentId
    )
SELECT Department, Employee, Salary
FROM employee_department
WHERE rnk <= 3