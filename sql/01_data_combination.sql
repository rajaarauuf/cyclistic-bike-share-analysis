-- =============================================
-- PROJECT: Cyclistic Bike-Share Analysis
-- FILE: 01_data_combination.sql
-- PURPOSE: Combine 12 monthly datasets
-- PERIOD: November 2025 - October 2026
-- TOOL: Google BigQuery
-- =============================================

CREATE OR REPLACE TABLE
  `cyclistic-bike-2026.cyclistic_analysis.trips_12_months`
AS

SELECT * REPLACE(CAST(ride_id AS STRING) AS ride_id)
FROM `cyclistic-bike-2026.cyclistic_raw.divvy_202511`

UNION ALL

SELECT * REPLACE(CAST(ride_id AS STRING) AS ride_id)
FROM `cyclistic-bike-2026.cyclistic_raw.divvy_202512`

UNION ALL

SELECT * REPLACE(CAST(ride_id AS STRING) AS ride_id)
FROM `cyclistic-bike-2026.cyclistic_raw.divvy_202601`

UNION ALL

SELECT * REPLACE(CAST(ride_id AS STRING) AS ride_id)
FROM `cyclistic-bike-2026.cyclistic_raw.divvy_202602`

UNION ALL

SELECT * REPLACE(CAST(ride_id AS STRING) AS ride_id)
FROM `cyclistic-bike-2026.cyclistic_raw.divvy_202603`

UNION ALL

SELECT * REPLACE(CAST(ride_id AS STRING) AS ride_id)
FROM `cyclistic-bike-2026.cyclistic_raw.divvy_202604`

UNION ALL

SELECT * REPLACE(CAST(ride_id AS STRING) AS ride_id)
FROM `cyclistic-bike-2026.cyclistic_raw.divvy_202605`

UNION ALL

SELECT * REPLACE(CAST(ride_id AS STRING) AS ride_id)
FROM `cyclistic-bike-2026.cyclistic_raw.divvy_202606`

UNION ALL

SELECT * REPLACE(CAST(ride_id AS STRING) AS ride_id)
FROM `cyclistic-bike-2026.cyclistic_raw.divvy_202607`

UNION ALL

SELECT * REPLACE(CAST(ride_id AS STRING) AS ride_id)
FROM `cyclistic-bike-2026.cyclistic_raw.divvy_202608`

UNION ALL

SELECT * REPLACE(CAST(ride_id AS STRING) AS ride_id)
FROM `cyclistic-bike-2026.cyclistic_raw.divvy_202609`

UNION ALL

SELECT * REPLACE(CAST(ride_id AS STRING) AS ride_id)
FROM `cyclistic-bike-2026.cyclistic_raw.divvy_202610`;
