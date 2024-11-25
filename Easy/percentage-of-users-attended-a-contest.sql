-- SQL solution for Percentage Of Users Attended A Contest
-- Write a solution to find the percentage of the users registered in each contest rounded to two decimals. Return the result table ordered by percentage in descending order. In case of a tie, order it by contest_id in ascending order.
SELECT 
    r.contest_id,
    ROUND(COUNT(DISTINCT r.user_id) * 100.0 / (SELECT COUNT(*) FROM Users), 2) AS percentage
FROM 
    Register r
GROUP BY 
    r.contest_id
ORDER BY 
    percentage DESC, 
    r.contest_id ASC;