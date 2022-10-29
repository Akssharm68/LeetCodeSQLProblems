select 
    least(from_id, to_id) person1,
    greatest(from_id, to_id) person2,
    count(*) call_count,
    sum(duration) total_duration
from calls
group by 1,2; 




