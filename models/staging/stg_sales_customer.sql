with source_sales_customer as 
(
    select
        customerid
        ,personid
        ,storeid
        ,territoryid
        ,rowguid
        ,modifieddate
    from Adventureworks_EL.sales_customer
)

select * from source_sales_customer