with order_items as (
    select * from {{ ref('int_order_items_aggregated') }}
),

orders as (
    select * from {{ ref('stg_olist__orders') }}
),

customers as (
    select * from {{ ref('stg_olist__customers') }}
),

final as (
    select 
        order_items.order_id, 
        orders.customer_id, 
        customers.customer_unique_id,
        orders.order_status,
        orders.order_purchase_timestamp,
        order_items.total_price,  
        order_items.total_freight 
    from order_items
    join orders
        on order_items.order_id = orders.order_id 
    join customers
        on orders.customer_id = customers.customer_id
)

select * from final