select unique_id, name
from employees e
left join employeeUNI p on e.id=p.id
