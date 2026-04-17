with category_translation_source as (
    select * from {{ source("olist", "PRODUCT_CATEGORY_NAME_TRANSLATION")}}
)

select * from category_translation_source
