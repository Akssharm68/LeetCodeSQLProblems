select employee_id, 
 if(employee_id %2= 1 and left(name, 1)!= 'M', salary, 0) AS bonus
from employees
order by employee_id
