with source_sales_credit_card as 
(
    select countryregioncode
        ,'name' as credit_card_name
        ,modifieddate
    from Adventureworks_EL.person_person_country_region
)

select *
from source_sales_credit_card