with source_sales_reason as
(
    select 
        salesreasonid
        , sales_reason.name as reason_name
        , reasontype
        , modifieddate
    from Adventureworks_EL.sales_reason
)

select * 
from source_sales_reason