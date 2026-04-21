{{ config(enabled=false) }}

with orders as (
    select * from {{ ref("stg_olist__orders") }}
),

order_items as (
    select * from {{ ref("stg_olist__order_items") }}
),

joined as (
    select
        *
    from orders join order_items on orders.order_id = order_items.order_id
)

select * from joined