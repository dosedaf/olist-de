with payments as (
    select * from {{ ref('int_payments_aggregated')}}
)

select 
    payment_type,
    total_payment,
    total_value
from
    payments