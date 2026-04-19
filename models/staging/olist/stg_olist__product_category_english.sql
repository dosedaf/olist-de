with category_translation_source as (
    select * from {{ source("olist", "PRODUCT_CATEGORY_NAME_TRANSLATION")}}
),

final as (
    select
        product_category_name,
        product_category_name_english
    from
        category_translation_source
)

select * from final
