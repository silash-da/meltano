with adventure_works_person as 
(
    select 
        businessentityid as business_entity_id,
        emailpromotion as email_promotion,
        firstname as first_name,
        lastname as last_name,
        middlename as middle_name,
        persontype as person_type

     from {{source('adventureworks2019','person')}}
)

,final as 
(
    select * from adventure_works_person
)

select * from final
