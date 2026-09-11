-- Write your query below
select
    name
from sales_person
where sales_id not in (
    select
        s.sales_id
    from sales_person s
    join orders o on s.sales_id = o.sales_id
    join company c on o.com_id = c.com_id
    where c.name like 'CRIMSON'
)