select
round(sqrt(power(p2.x-p1.x,2) + power(p2.y-p1.y,2)),2) as shortest
from
point2d p1 cross join point2d p2
on (p1.x,p1.y) != (p2.x,p2.y)
order by 1 asc
limit 1;
