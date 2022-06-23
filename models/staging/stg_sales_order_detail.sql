with sales_order_detail as 
(
    select salesorderid
        ,productid
        ,rowguid
        ,specialofferid
        ,salesorderdetailid
        ,carriertrackingnumber
        ,orderqty
        ,unitprice
        ,unitpricediscount
        ,modifieddate
    from Adventureworks_EL.sales_order_detail
)

select *
from sales_order_detail