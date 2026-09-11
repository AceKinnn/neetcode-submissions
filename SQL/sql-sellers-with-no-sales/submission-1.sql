with yearly_sales as (
    select
        s.seller_id,
        count(o.order_id) as total_order
    from seller s
    left join orders o on s.seller_id = o.seller_id
    where EXTRACT(YEAR FROM o.sale_date) = 2020
    group by s.seller_id
)

select
    seller_name
from seller
where seller_id not in (
    select seller_id from yearly_sales
)
order by seller_name asc