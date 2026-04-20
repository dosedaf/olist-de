with sellers as (
    select * from {{ ref('int_sellers_geolocation_joined')}}
)

select
    seller_id,
    zip_code,
    latitude,
    longitude,
    city,
    state
from 
    sellers