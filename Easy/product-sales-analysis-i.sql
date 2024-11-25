-- SQL solution for Product Sales Analysis I
-- Write a solution to report the product_name, year, and price for each sale_id in the Sales table
SELECT  `product_name`, `year`, `price`
FROM `Sales` s
JOIN `Product` p ON s.`product_id` = p.`product_id`;

