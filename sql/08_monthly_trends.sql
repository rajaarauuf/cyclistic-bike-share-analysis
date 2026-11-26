-- =============================================
-- PROJECT: Cyclistic Bike-Share Analysis
-- FILE: 08_monthly_trends.sql
-- PURPOSE: Analyze monthly ride trends by rider type
-- PERIOD: November 2025 - October 2026
-- TOOL: Google BigQuery
-- =============================================

-- MONTHLY TREND ANALYSIS
--
-- Step 1: Extract the local ride month.
-- Step 2: Calculate monthly ride counts by rider type.
-- Step 3: Calculate the percentage distribution of monthly rides.
-- Step 4: Identify the highest and lowest activity months.
-- Step 5: Compare monthly trends between members and casual riders.
--
-- KEY DIMENSIONS:
-- - Ride month
-- - Rider type
--
-- SOURCE TABLE:
-- cyclistic-bike-2026.cyclistic_analysis.trips_cleaned
-- =============================================

SELECT
  FORMAT_DATE('%Y-%m', DATE(started_at, 'America/Chicago')) AS ride_month,
  member_casual,
  COUNT(*) AS total_rides,
  ROUND(
    COUNT(*) * 100.0 /
    SUM(COUNT(*)) OVER (PARTITION BY member_casual),
    2
  ) AS percentage_of_yearly_rides
FROM
  `cyclistic-bike-2026.cyclistic_analysis.trips_cleaned`
GROUP BY
  ride_month,
  member_casual
ORDER BY
  ride_month,
  member_casual;
