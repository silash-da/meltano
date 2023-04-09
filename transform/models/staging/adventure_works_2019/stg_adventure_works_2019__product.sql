with adventure_works_product as 
(
    select 
        productid as product_id,
        name as product_name,
        productnumber as product_number,
        sellstartdate as sell_start_date,
        --"{{ dbt_utils.pretty_time(format='%Y-%m-%d %H:%M:%S') }}" as test_date
     from {{source('adventureworks2019','product')}}
)

,final as 
(
    select * from adventure_works_product
)

select * from final
