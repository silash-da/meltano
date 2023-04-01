with adventure_works_customer as 
(
    select 
        accountnumber as account_number,
        customerid as customer_id,
        storeid as store_id,
        territoryid as territory_id
     from {{source('adventureworks2019','customer')}}
)

,final as 
(
    select * from adventure_works_customer
)

select * from final
