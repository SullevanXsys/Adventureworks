with
 sales_order_header as (
    select *
    from {{ ref('stg_sales_order_header') }}
)

,sales_order_header_sales_order_reason as (
    select *
    from {{ ref('stg_sales_order_header_sales_order_reason') }}
)


,sales_reason as (
    select *
    from {{ ref('stg_sales_reason') }}
)

,sales_credit_card as (
    select *
    from {{ ref('stg_sales_credit_card') }}
)

, joining as (
    select
        row_number() over (order by salesorderid) as salesordersk
        ,salesorderid
        ,billtoaddressid
        ,sales_order_header.status
        ,sales_reason.name
        ,sales_reason.reasontype
        ,sales_credit_card.cardtype
        ,sales_credit_card.cardnumber
        ,sales_credit_card.expmonth
        ,sales_credit_card.expyear
    from sales_order_header
    left join sales_order_header_sales_reason 
        on sales_order_header.salesorderid = sales_order_header_sales_reason.salesorderid
    left join sales_reason 
        on sales_order_header_sales_reason.salesreasonid = sales_reason.salesreasonid
    left join sales_credit_card 
        on sales_order_header.creditcardid = sales_credit_card.creditcardid
)

select *
from joining