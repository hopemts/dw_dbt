{{ config(
    materialized='table',
    schema='dw_samssubs') }}

SELECT
  {{ dbt_utils.generate_surrogate_key(['page_url']) }} AS webpagekey,
  page_url
FROM {{ source('samssubs_web', 'web_traffic_events') }}
GROUP BY page_url