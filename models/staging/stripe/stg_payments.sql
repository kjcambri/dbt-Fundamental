 SELECT
    id AS payment_id,
    orderid AS order_id,
    paymentmethod AS payment_method,
    status,

     --amount is stored in cents, convert it to dollars
    amount / 100 AS amount,
    created AS created_at,


 FROM {{source('stripe','payment')}}


