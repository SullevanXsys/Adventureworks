with stg_person_person as (
    select businessentityid
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
    from Adventureworks_EL.person_person
)

select *
from stg_person_person