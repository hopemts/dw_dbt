{{ config(
    materialized = 'table',
    schema = 'dw_samssubs'
    )
}}

SELECT
storeid as storekey,
storeid,
address,
city,
state
zip
FROM {{ source('samssubs_landing', 'store') }}