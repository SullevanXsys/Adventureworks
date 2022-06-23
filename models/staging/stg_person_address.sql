WITH stg_person_address AS (
    SELECT addressid
        ,addressline1
        ,addressline2
        ,city
        ,stateprovinceid
        ,postalcode
        ,spatiallocation
        ,rowguid
        ,modifieddate
    FROM {{ SOURCE('Adventureworks_EL', 'person_address') }}
)

select *
from stg_person_address