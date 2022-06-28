with
 person_address as (
    select *
    from {{ ref('stg_person_address') }}
)

,person_state_province as (
    select *
    from {{ ref('stg_person_state_province') }}
)

,person_country_region as (
    select *
    from {{ ref('stg_person_country_region') }}
)


, joining as (
    select
         person_address.city
        ,person_address.addressline1
        ,person_address.addressline2
        ,person_address.postalcode
        ,person_state_province.name
        ,person_country_region.name
    from person_address
    left join person_state_province 
        on person_address.sateprovinceid = person_state_province.stateprovinceid
    left join person_country_region
        on person_state_province.countryregioncode = person_country_region.countryregioncode
)

select *
from joining