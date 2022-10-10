select c.name as Customers
from customers c
left join orders o 
on c.id= o.customerId
where o.customerId is null
511. Game Play Analysis I
select Player_id, min(event_date) as first_login
from activity 
group by player_id 
