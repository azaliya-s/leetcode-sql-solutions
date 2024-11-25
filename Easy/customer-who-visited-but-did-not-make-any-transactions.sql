-- SQL solution for Customer Who Visited But Did Not Make Any Transactions
-- Write a solution to find the IDs of the users who visited without making any transactions and the number of times they made these types of visits
SELECT 
  customer_id, 
  COUNT(visit_id) AS count_no_trans 
FROM 
  Visits 
WHERE 
  visit_id NOT IN (
    SELECT 
      visit_id 
    FROM 
      Transactions
  ) 
GROUP BY 
  customer_id