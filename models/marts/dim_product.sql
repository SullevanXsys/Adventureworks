with products as (
    select *
    from {{ ref('stg_product') }}
)

, salesorderdetail as (
    select *
    from {{ ref('stg_sales_order_detail') }}
)

, joining as (
    select
        row_number() over (order by productid) as productsk
        ,productid
        sales.product.productid
        ,sales.salesorderdetail.salesorderid
        ,sales.salesorderdetail.salesorderdetailid
        ,production.product.name 
        ,production.product.number 
        ,sales.salesorderdetail.orderqty
        ,sales.salesorderdetail.unitprice
    from products
    left join salesorderdetail on products.productid = salesorderdetail.productid
)

select *
from joining
