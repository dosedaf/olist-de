with customers as (
    select * from {{ ref('int_customers_geolocation_joined')}}
)

select
    customer_id,
    customer_unique_id,
    zip_code,
    latitude,
    longitude,
    city,
    state
from 
    customers