with
 person as (
    select *
    from {{ ref('stg_person_person') }}
)

,sales_customer as (
    select *
    from {{ ref('stg_sales_customer') }}
)

, joining as (
    select
         person.firstname
        ,person.middlename
        ,person.lastname
    from person
    join sales_customer 
        on person_person.businessentityid = sales_customer.personid
)

select *
from joining