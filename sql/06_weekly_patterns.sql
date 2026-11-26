-- =============================================
-- PROJECT: Cyclistic Bike-Share Analysis
-- FILE: 06_weekly_patterns.sql
-- PURPOSE: Analyze ride patterns by day of the week
-- PERIOD: November 2025 - October 2026
-- TOOL: Google BigQuery
-- =============================================

-- WEEKLY USAGE ANALYSIS
--
-- Step 1: Extract the local day of the week from ride timestamps.
-- Step 2: Organize weekdays in chronological order.
-- Step 3: Calculate total rides by day and rider type.
-- Step 4: Calculate the percentage distribution across weekdays.
-- Step 5: Compare weekday and weekend riding patterns.
--
-- KEY DIMENSIONS:
-- - Day of week
-- - Rider type
--
-- SOURCE TABLE:
-- cyclistic-bike-2026.cyclistic_analysis.trips_cleaned
-- =============================================

SELECT
  member_casual,
  FORMAT_TIMESTAMP(
    '%A',
    started_at,
    'America/Chicago'
  ) AS day_of_week,
  EXTRACT(
    DAYOFWEEK FROM started_at AT TIME ZONE 'America/Chicago'
  ) AS day_number,
  COUNT(*) AS total_rides
FROM
  `cyclistic-bike-2026.cyclistic_analysis.trips_cleaned`
GROUP BY
  member_casual,
  day_of_week,
  day_number
ORDER BY
  day_number,
  member_casual;
