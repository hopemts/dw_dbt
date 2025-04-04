{{ config(
        materialized='table',
        schema='dw_samssubs') }}

SELECT
  {{ dbt_utils.generate_surrogate_key(['ordermethod']) }} AS methodkey,
  ordermethod
FROM {{ source('samssubs_landing', '"ORDER"') }}
GROUP BY ordermethod
