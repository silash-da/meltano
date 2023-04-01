with adventure_works_employee as 
(
    select 
        
        businessentityid as business_entity_id,
        gender ,
        hiredate as hire_date,
        birthdate,
        jobtitle as job_title,
        maritalstatus as marital_status,
        organizationlevel as organization_level,
        sickleavehours as sickleave_hours ,
        vacationhours as vacation_hours
        
     from {{source('adventureworks2019','employee')}}
)

,final as 
(
    select * from adventure_works_employee
)

select * from final