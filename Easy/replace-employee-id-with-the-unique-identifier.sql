-- SQL solution for Replace Employee Id With The Unique Identifier
-- Write a solution to show the unique ID of each user, If a user does not have a unique ID replace just show null
SELECT `unique_id`, `name`
FROM `Employees` uni
LEFT JOIN `EmployeeUNI` e ON e.`id` = uni.`id`;

