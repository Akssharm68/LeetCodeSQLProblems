select
    i.invoice_id,
    c.customer_name,
    i.price,
    count(con.user_id) as contacts_cnt,
    count(c2.email) as trusted_contacts_cnt
from invoices i
join customers c on c.customer_id = i.user_id
left join contacts con on con.user_id = c.customer_id
left join customers c2 on c2.email = con.contact_email
group by i.invoice_id, c.customer_name, i.price
order by i.invoice_id
