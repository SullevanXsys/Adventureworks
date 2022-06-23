with source_sales_credit_card as 
(
    select creditcardid
        ,cardtype
        ,cardnumber
        ,expmonth
        ,expyear
        ,modifieddate
    from Adventureworks_EL.sales_credit_card
)

select *
from source_sales_credit_card