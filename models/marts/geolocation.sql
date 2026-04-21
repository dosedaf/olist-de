with geolocation as (
    select * from {{ref('stg_olist__geolocation')}}
)

select 
    zip_code,
    latitude,
    longitude,
    city,
    state
from 
    geolocation