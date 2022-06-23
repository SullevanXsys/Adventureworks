WITH stg_sales_order_header AS (
    SELECT salesorderid
        ,revisionnumber
        ,orderdate
        ,duedate
        ,shipdate
        ,'status'
        ,onlineorderflag
        ,purchaseordernumber
        ,accountnumber
        ,customerid
        ,salespersonid
        ,territoryid
    FROM {{ SOURCE('Adventureworks_EL', 'sales_order_header') }}
)

select *
from stg_sales_order_header