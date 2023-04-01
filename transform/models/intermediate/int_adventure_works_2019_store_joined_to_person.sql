WITH stg_store AS (
    SELECT
        *
    FROM
        {{ref('stg_adventure_works_2019__store')}}
)

, stg_person AS (
    SELECT 
        *
    FROM 
        {{ref('stg_adventure_works_2019__person')}}

)

,store_joined_person AS (
    SELECT
        s.*,
        concat(p.first_name,'.',p.last_name) as saleperson_name
        
    FROM stg_store s
    LEFT JOIN stg_person p
    ON
        s.salesperson_id = p.business_entity_id
)

, final AS (
    SELECT
        *
    FROM store_joined_person
)

SELECT
    *
FROM final