with source_person_address as 
(
    select addressid
        ,stateprovinceid
        ,rowguid
        ,addressline1
        ,addressline2
        ,city
        ,postalcode
        ,spatiallocation
        ,modifieddate
    from Adventureworks_EL.person_address
)

select *
from source_person_address