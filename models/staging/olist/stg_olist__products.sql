
with product_source as (
    select * from {{ source("olist", "OLIST_PRODUCTS_DATASET")}}
),

category_translation_source as (
    select * from {{ source("olist", "PRODUCT_CATEGORY_NAME_TRANSLATION")}}
),

renamed as (
    select 
        product_id,
        product_category_name_english as category,
        product_name_lenght as name_length,
        product_description_lenght as description_length, -- dropable??
        product_photos_qty as photos_qty, // -- dropable?
        product_weight_g as weight_g,
        product_length_cm as length_cm,
        product_height_cm as height_cm,
        product_width_cm as width_cm
        
    from 
        product_source a
    inner join
        category_translation_source b
    on
        a.product_category_name = b.product_category_name

)

select * from renamed
