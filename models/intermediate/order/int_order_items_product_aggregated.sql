select
    product_id,
    count(*) as total_order,
    sum(price) as total_price,
    sum(freight_value) as total_freight
from {{ ref("stg_olist__order_items")}}
group by product_id