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
        ,sales_order_header.status AS order_status
        ,onlineorderflag
        ,purchaseordernumber
        ,accountnumber
    from Adventureworks_EL.sales_order_header
)

select *
from source_sales_order_header

