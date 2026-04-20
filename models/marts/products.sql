with final as (
    select * from {{ ref('int_products_product_category_english_joined')}}
)

select 
    product_id,
    category,
    name_length,
    description_length, -- dropable??
    photos_qty, -- dropable?
    weight_g,
    length_cm,
    height_cm,
    width_cm
from
    final