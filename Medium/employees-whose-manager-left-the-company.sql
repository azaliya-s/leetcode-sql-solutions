-- SQL solution for Employees Whose Manager Left The Company
SELECT employee_id
FROM Employees
WHERE salary < 30000
AND manager_id NOT IN (
  SELECT employee_id FROM Employees
)
ORDER BY employee_id;