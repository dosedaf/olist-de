with products as (
    select * from {{ ref("stg_olist__products")}}
),

category_english as (
    select * from {{ ref("stg_olist__product_category_english")}}
),

final as (
    select
        product_id,
        b.product_category_name_english as category,
        name_length,
        description_length, -- dropable??
        photos_qty, -- dropable?
        weight_g,
        length_cm,
        height_cm,
        width_cm
    from
        products a 
    inner join
        category_english b
    on
       a.category = b.product_category_name
)

select * from final