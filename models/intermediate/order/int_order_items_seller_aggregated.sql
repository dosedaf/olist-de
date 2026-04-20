select
    seller_id,
    count(distinct order_id) as total_orders,
    count(distinct product_id) as distinct_products,
    sum(price) as total_revenue,
    sum(freight_value) as total_freight,
    avg(price) as avg_order_value
from {{ ref("stg_olist__order_items") }}
group by seller_id