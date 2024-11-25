-- SQL solution for Monthly Transactions I
-- Write an SQL query to find for each month and country, the number of transactions and their total amount, the number of approved transactions and their total amount.

SELECT left(trans_date, 7) as month, country, count(id) as trans_count,  sum(state= 'approved') as approved_count, sum(amount) as trans_total_amount, sum((state='approved')*amount) as approved_total_amount
FROM Transactions 
GROUP BY month, country;