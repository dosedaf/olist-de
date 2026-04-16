
with source as (
    select * from {{ source("olist", "OLIST_ORDERS_DATASET")}}
),

renamed as (
    select 
        *    
    from 
        source
)

select * from renamed
