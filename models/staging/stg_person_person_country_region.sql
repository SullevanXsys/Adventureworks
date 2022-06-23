WITH stg_person_country_region AS (
    SELECT countryregioncode
        ,persontype
        ,'name'
        ,modifieddate
    FROM {{ SOURCE('Adventureworks_EL', 'person_person_country_region') }}
)

select *
from stg_person_country_region