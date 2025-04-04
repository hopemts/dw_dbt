{{ config(
    materialized = 'table',
    schema = 'dw_samssubs'
    )
}}

SELECT
productid as productkey,
productid,
productname,
productcalories
FROM {{ source('samssubs_landing', 'product') }}