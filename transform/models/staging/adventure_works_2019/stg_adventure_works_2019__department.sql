with adventure_works_department as 
(
    select 
        
        departmentid as department_id,
        groupname as group_name,
        name as department_name
     from {{source('adventureworks2019','department')}}
)

,final as 
(
    select * from adventure_works_department
)

select * from final