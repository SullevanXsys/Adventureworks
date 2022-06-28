with source_sales_order_header_reason as 
(
    select 
        salesorderid
        ,salesreasonid
        ,modifieddate
    from Adventureworks_EL.sales_order_header_sales_order_reason
)

select * from source_sales_order_header_reason