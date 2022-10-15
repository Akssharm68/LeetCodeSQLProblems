select 
	P.project_id, round(sum(E.experience_years)/count(*),2) as average_years
from 
	Project P left join Employee E
on
	P.employee_id = E.employee_id
group by
	P.project_id
