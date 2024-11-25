-- SQL solution for Group Sold Products By The Date
select sell_date, count(distinct product) as num_sold, GROUP_CONCAT(DISTINCT product ORDER BY PRODUCT ASC SEPARATOR ',') AS products
from Activities
group by sell_date
order by sell_date ;