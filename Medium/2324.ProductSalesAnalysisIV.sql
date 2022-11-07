Select user_id, product_id from(
Select s.product_id,user_id, SUM(quantity * price) as amount,
DENSE_RANK() over (partition by user_id order by SUM(quantity * price) desc) as RNK
from Sales s JOIN Product p on
s.product_id = p.product_id
    group by s.user_id, s.product_id
    )temp
    where RNK = 1
