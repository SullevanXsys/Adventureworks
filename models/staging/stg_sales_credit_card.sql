WITH stg_sales_credit_card AS (
    SELECT creditcardid
        ,cardtype
        ,cardnumber
        ,expmonth
        ,expyear
        ,modifieddate
    FROM {{ SOURCE('Adventureworks_EL', 'sales_credit_card') }}
)

select *
from stg_sales_credit_card