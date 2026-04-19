select
    order_id,
    count(*) as total_items,
    count(distinct product_id) as distinct_products,
    sum(price) as total_price,
    sum(freight_value) as total_freight
from {{ ref("stg_olist__order_items")}}
group by order_id