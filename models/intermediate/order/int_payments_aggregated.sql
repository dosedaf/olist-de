with payments as (
    select * from {{ ref('stg_olist__order_payments')}}
)

select 
    payment_type,
    count(*) as total_payment,
    sum(payment_value) as total_value
from
    payments
group by
    payment_type