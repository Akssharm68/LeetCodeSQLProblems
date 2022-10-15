select customer_number from 
(select customer_number, count(customer_number) as cnt from orders 
group by customer_number order by cnt desc) as t limit 1;
