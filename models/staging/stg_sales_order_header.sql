with source_sales_order_header as 
(
    select salesorderid
        ,salespersonid
        ,customerid
        ,territoryid
        ,revisionnumber
        ,orderdate
        ,duedate
        ,shipdate
        ,'status' AS order_status
        ,onlineorderflag
        ,purchaseordernumber
        ,accountnumber
    from Adventureworks_EL.sales_order_header
)

select *
from source_sales_order_header