WITH stg_sales_reason AS (
    SELECT salesorderid
        ,'name'
        ,reasontype
        ,modifieddate
    FROM {{ SOURCE('Adventureworks_EL', 'sales_reason') }}
)

select *
from stg_sales_reason