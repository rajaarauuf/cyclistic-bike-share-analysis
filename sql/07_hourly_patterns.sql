-- =============================================
-- PROJECT: Cyclistic Bike-Share Analysis
-- FILE: 07_hourly_patterns.sql
-- PURPOSE: Analyze ride activity by hour of the day
-- PERIOD: November 2025 - October 2026
-- TOOL: Google BigQuery
-- =============================================

-- HOURLY USAGE ANALYSIS
--
-- Step 1: Extract the local starting hour of each ride.
-- Step 2: Calculate total rides by hour and rider type.
-- Step 3: Calculate the percentage distribution of hourly rides.
-- Step 4: Identify peak riding hours.
-- Step 5: Compare hourly activity between members and casual riders.
--
-- KEY DIMENSIONS:
-- - Ride hour
-- - Rider type
--
-- SOURCE TABLE:
-- cyclistic-bike-2026.cyclistic_analysis.trips_cleaned
-- =============================================

SELECT
  member_casual,
  EXTRACT(
    HOUR FROM started_at AT TIME ZONE 'America/Chicago'
  ) AS ride_hour,
  COUNT(*) AS total_rides,
  ROUND(
    COUNT(*) * 100.0 /
    SUM(COUNT(*)) OVER (PARTITION BY member_casual),
    2
  ) AS percentage_of_rides
FROM
  `cyclistic-bike-2026.cyclistic_analysis.trips_cleaned`
GROUP BY
  member_casual,
  ride_hour
ORDER BY
  ride_hour,
  member_casual;
