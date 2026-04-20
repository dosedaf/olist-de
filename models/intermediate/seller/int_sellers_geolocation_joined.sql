with sellers as (
    select * from {{ ref('stg_olist__sellers')}}
),

geolocation as (
    select * from {{ ref('stg_olist__geolocation')}}
)

select
    sellers.seller_id,
    sellers.zip_code,
    geolocation.latitude,
    geolocation.longitude,
    sellers.city,
    sellers.state,
from 
    sellers
left join 
    geolocation
on
    sellers.zip_code = geolocation.zip_code
