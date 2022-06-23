WITH stg_person_person AS (
    SELECT businessentityid
        ,persontype
        ,namestyle
        ,title
        ,firstname
        ,middlename
        ,lastname
        ,suffix
        ,emailpromotion
        ,additionalcontactinfo
        ,demographics
        ,rowguid
        ,modifieddate
    FROM {{ SOURCE('Adventureworks_EL', 'person_person') }}
)

select *
from stg_person_person