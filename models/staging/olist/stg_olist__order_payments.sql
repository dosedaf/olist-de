with source as (
    select * from {{ source("olist", "OLIST_ORDER_PAYMENTS_DATASET")}}
),

renamed as (
    select 
        *    
    from 
        source
)

select * from renamed
