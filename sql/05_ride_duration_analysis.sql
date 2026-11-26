-- =============================================
-- PROJECT: Cyclistic Bike-Share Analysis
-- FILE: 05_ride_duration_analysis.sql
-- PURPOSE: Compare ride duration between rider types
-- PERIOD: November 2025 - October 2026
-- TOOL: Google BigQuery
-- =============================================

-- RIDE DURATION ANALYSIS
--
-- Step 1: Calculate ride duration in minutes.
-- Step 2: Calculate average ride duration by rider type.
-- Step 3: Calculate median ride duration by rider type.
-- Step 4: Compare duration patterns between members and casual riders.
--
-- KEY METRICS:
-- - Average ride duration
-- - Median ride duration
--
-- SOURCE TABLE:
-- cyclistic-bike-2026.cyclistic_analysis.trips_cleaned
-- =============================================

SELECT
  member_casual,
  COUNT(*) AS total_rides,
  ROUND(
    AVG(
      TIMESTAMP_DIFF(ended_at, started_at, SECOND) / 60.0
    ), 2
  ) AS avg_ride_length_minutes,
  ROUND(
    APPROX_QUANTILES(
      TIMESTAMP_DIFF(ended_at, started_at, SECOND) / 60.0,
      100
    )[OFFSET(50)], 2
  ) AS median_ride_length_minutes
FROM
  `cyclistic-bike-2026.cyclistic_analysis.trips_cleaned`
GROUP BY
  member_casual
ORDER BY
  avg_ride_length_minutes DESC;
