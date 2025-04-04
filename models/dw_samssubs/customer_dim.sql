{{ config(
    materialized = 'table',
    schema = 'dw_samssubs'
    )
}}

SELECT
customerid as customerkey,
customerid,
customerfname,
customerlname,
customerbday,
customerphone
FROM {{ source('samssubs_landing', 'customer') }}
