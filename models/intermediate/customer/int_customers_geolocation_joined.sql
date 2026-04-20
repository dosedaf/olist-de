with customers as (
    select * from {{ ref('stg_olist__customers')}}
),

geolocation as (
    select * from {{ ref('stg_olist__geolocation')}}
)

select
    customers.customer_id,
    customers.customer_unique_id,
    customers.zip_code,
    geolocation.latitude,
    geolocation.longitude,
    customers.city,
    customers.state,
from 
    customers
left join 
    geolocation
on
    customers.zip_code = geolocation.zip_code
