with adventure_works_salesterritory as 
(
    select 
        
        territoryid as location_id,
        
        name as territory_name,
        "group" as territory_group,
        countryregioncode as countryregion_code,
        salesytd  as sales_YTD,
        saleslastyear as sales_LY,
        costytd  as cost_YTD,
        costlastyear as cost_LY
     from {{source('adventureworks2019','salesterritory')}}
)

,final as 
(
    select * from adventure_works_salesterritory
)

select * from final