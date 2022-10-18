select L1.log_id as START_ID, min(L2.log_id) as END_ID
from 
	(select log_id from Logs 
	where log_id-1 not in (select log_id from Logs)) L1,
	(select log_id from Logs 
	where log_id+1 not in (select log_id from Logs)) L2
where L1.log_id <= L2.log_id
group by L1.log_id
