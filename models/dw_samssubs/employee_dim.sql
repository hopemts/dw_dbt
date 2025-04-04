{{ config(
    materialized = 'table',
    schema = 'dw_samssubs'
    )
}}

SELECT
employeeid as employeekey,
employeeid,
employeefname,
employeelname,
employeebday,
storeid
FROM {{ source('samssubs_landing', 'employee') }}