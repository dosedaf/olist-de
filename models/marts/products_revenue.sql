with final as (
    select * from {{ ref("int_order_items_product_aggregated")}}
)

select
    product_id,
    total_order,
    total_price,
    total_freight
from
    final