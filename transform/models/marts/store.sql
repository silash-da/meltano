WITH store_joined_person AS(
    SELECT
        *
    FROM {{ref('int_adventure_works_2019_store_joined_to_person')}}
)

SELECT
    *
FROM store_joined_person
