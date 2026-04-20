with source as (
    select * from {{ source("olist", "OLIST_GEOLOCATION_DATASET")}}
),

renamed as (
    select 
        geolocation_zip_code_prefix as zip_code,
        geolocation_lat as latitude,
        geolocation_lng as longitude,
        geolocation_city as city,
        geolocation_state as state,
    from 
        source
)

select
    zip_code,
    avg(latitude) as latitude,
    avg(longitude) as longitude,
    max(city) as city,
    max(state) as state
from renamed 
group by zip_code

/*
deduplicated as (
    select *,
        row_number() over (
            partition by zip_code 
            order by zip_code
        ) as rn
    from renamed
)

select * from deduplicated where rn = 1
*/