select e2.Name
from employee e1
join employee e2
on e1.ManagerId=e2.Id
group by e2.name
having count(*)>=5
