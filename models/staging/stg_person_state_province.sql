with source_state_province as
(
    select 
         customerid
        ,personid
        ,storeid
        ,territoryid
        ,rowguid
        ,modifieddate
    from Adventureworks_EL.person_state_province
)

select * from source_state_province