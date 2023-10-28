
with source as (
    select "ID",
        "USER_ID",
        "ORDER_DATE",
        "STATUS"
         from {{ source("jaffle_shop", "jaffle_shop_orders")}}
),

staged as (
    select 
        "ID" as order_id,
        "USER_ID" as customer_id,
        "ORDER_DATE" as order_date,
        "STATUS" as status
    from source

)

select
   *
from staged