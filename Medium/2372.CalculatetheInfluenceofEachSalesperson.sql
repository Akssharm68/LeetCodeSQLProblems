select s.salesperson_id, name, ifnull(sum(price),0) total
from salesperson s left join customer c
on s.salesperson_id = c.salesperson_id
left join sales
on c.customer_id = sales.customer_Id
group by salesperson_Id
