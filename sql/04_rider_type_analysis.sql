-- =============================================
-- PROJECT: Cyclistic Bike-Share Analysis
-- FILE: 04_rider_type_analysis.sql
-- PURPOSE: Analyze ride distribution by rider type
-- PERIOD: November 2025 - October 2026
-- TOOL: Google BigQuery
-- =============================================

-- RIDER TYPE ANALYSIS
--
-- Step 1: Calculate total rides by rider type.
-- Step 2: Compare annual member and casual ride counts.
-- Step 3: Calculate the percentage contribution of each rider type.
--
-- KEY METRICS:
-- - Total rides
-- - Member rides
-- - Casual rides
-- - Member ride share
-- - Casual ride share
--
-- SOURCE TABLE:
-- cyclistic-bike-2026.cyclistic_analysis.trips_cleaned
-- =============================================

SELECT
  member_casual,
  COUNT(*) AS total_rides,
  ROUND(
    COUNT(*) * 100.0 / SUM(COUNT(*)) OVER(),
    2
  ) AS percentage_of_rides
FROM
  `cyclistic-bike-2026.cyclistic_analysis.trips_cleaned`
GROUP BY
  member_casual
ORDER BY
  total_rides DESC;
