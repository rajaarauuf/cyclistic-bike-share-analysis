-- =============================================
-- PROJECT: Cyclistic Bike-Share Analysis
-- FILE: 09_bike_type_analysis.sql
-- PURPOSE: Compare bike type preferences by rider type
-- PERIOD: November 2025 - October 2026
-- TOOL: Google BigQuery
-- =============================================

-- BIKE TYPE PREFERENCE ANALYSIS
--
-- Step 1: Identify available bike types.
-- Step 2: Calculate total rides by bike type and rider type.
-- Step 3: Calculate the percentage distribution of bike types.
-- Step 4: Compare bike type preferences between members and casual riders.
--
-- KEY DIMENSIONS:
-- - Bike type
-- - Rider type
--
-- SOURCE TABLE:
-- cyclistic-bike-2026.cyclistic_analysis.trips_cleaned
-- =============================================

SELECT
  member_casual,
  rideable_type,
  COUNT(*) AS total_rides,
  ROUND(
    COUNT(*) * 100.0 /
    SUM(COUNT(*)) OVER (PARTITION BY member_casual),
    2
  ) AS percentage_of_rider_type
FROM
  `cyclistic-bike-2026.cyclistic_analysis.trips_cleaned`
GROUP BY
  member_casual,
  rideable_type
ORDER BY
  member_casual,
  total_rides DESC;
