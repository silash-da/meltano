with adventure_works_store as 
(
    select 
        businessentityid as business_entity_id,
        name as customer_name,
        salespersonid as salesperson_id
     from {{source('adventureworks2019','store')}}
)

,final as 
(
    select * from adventure_works_store
)

select * from final
