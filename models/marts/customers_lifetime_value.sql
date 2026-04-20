with final as (
    select * from {{ ref ('int_orders_customers_joined')}}
)

select 
    customer_unique_id, 
    count(distinct order_id) as total_orders,
    sum(total_price) as total_purchase, 
    sum(total_freight) as total_freight 
from 
    final 
group by 
    customer_unique_id