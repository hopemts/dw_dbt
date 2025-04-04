{{ config
    (materialized='table',
    schema='dw_samssubs') }}

SELECT
  {{ dbt_utils.generate_surrogate_key(['event_name']) }} AS event_name_key,
  event_name
FROM {{ source('samssubs_web', 'web_traffic_events') }}
GROUP BY event_name
