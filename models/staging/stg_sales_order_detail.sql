WITH stg_order_detail AS (
    SELECT salesorderid
        ,salesorderdetailid
        ,carriertrackingnumber
        ,orderqty
        ,productid
        ,specialofferid
        ,unitprice
        ,unitpricediscount
        ,rowguid
        ,modifieddate
    FROM {{ SOURCE('Adventureworks_EL', 'person_order_detail') }}
)

select *
from stg_order_detail