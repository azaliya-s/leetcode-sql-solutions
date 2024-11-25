-- Write a solution to get the names of products that have at least 100 units ordered in February 2020 and their amount.

select p.product_name, sum(o.unit) as unit
from Products p
join Orders o on p.product_id = o.product_id
where o.order_date between '2020-02-01' and '2020-02-29'
group by o.product_id having unit>=100; 