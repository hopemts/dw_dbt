{{ config(
    materialized='table', 
    schema='dw_samssubs') }}

SELECT
  {{ dbt_utils.generate_surrogate_key(['traffic_source']) }} AS traffic_source_key,
  traffic_source
FROM {{ source('samssubs_web', 'web_traffic_events') }}
GROUP BY traffic_source
