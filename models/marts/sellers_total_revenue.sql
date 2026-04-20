with final as (
    select * from {{ ref('int_order_items_seller_aggregated')}}
)

select 
    seller_id,
    total_orders,
    distinct_products,
    total_revenue,
    total_freight,
    avg_order_value
from 
    final