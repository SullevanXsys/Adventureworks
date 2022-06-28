with source_product as
(
    select
        productid
        ,production_product.name as product_name
        ,productnumber
        ,makeflag
        ,finishedgoodsflag
        ,color
        ,safetystocklevel
        ,reorderpoint
        ,standardcost
        ,listprice
        ,production_product.size as product_size
        ,sizeunitmeasurecode
        ,weightunitmeasurecode
        ,production_product.weight as product_weight
        ,daystomanufacture
        ,productline
        ,class
        ,style
        ,productsubcategoryid
        ,productmodelid
        ,sellstartdate
        ,sellenddate
        ,discontinueddate
        ,rowguid
        ,modifieddate
    from Adventureworks_EL.production_product
)

select * from source_product