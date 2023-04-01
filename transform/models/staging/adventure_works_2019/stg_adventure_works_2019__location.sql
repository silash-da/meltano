with adventure_works_location as 
(
    select 
        
        locationid as location_id,
        name as location_name 
        
     from {{source('adventureworks2019','location')}}
)

,final as 
(
    select * from adventure_works_location
)

select * from final