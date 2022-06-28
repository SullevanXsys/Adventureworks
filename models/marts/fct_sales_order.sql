with customers as (
    select
        customersk as customerfk
        , customerid
    from {{ref('dim_customer')}}
)

, location as (
    select
        locationsk as locationfk
        , locationid
    from {{ref('dim_location')}}
)

, product as (
    select
        productsk as productfk
        , productid
    from {{ref('dim_product')}}
)

, sale as (
    select
        salesk as salefk
        , saleid
    from {{ref('dim_sale')}}
)

, final as (
    select
        customer.customerfk
        ,location.location.sale_fk
        ,product.productfk
        ,sale.salefk
        ,count(distinct salesorderid) as numberorders
        ,sum(orderqty) as quantityorder
        ,sum(unitprice) as amountpurchased
        ,avg(unitprice) as averageticket
    from sale
    full join product
        on sale.salesorderid = product.salesorderid
    full join customers
        on sale.customerid = customers.customerid
    full join location
        on sale.billtoaddressid = location.locationid
)

select *
from final