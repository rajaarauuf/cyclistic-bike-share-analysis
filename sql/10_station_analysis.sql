-- =============================================
-- PROJECT: Cyclistic Bike-Share Analysis
-- FILE: 10_station_analysis.sql
-- PURPOSE: Identify the most popular starting and ending stations
-- PERIOD: November 2025 - October 2026
-- TOOL: Google BigQuery
-- =============================================

-- STATION USAGE ANALYSIS
--
-- Step 1: Analyze ride counts by starting station.
-- Step 2: Exclude missing starting station names.
-- Step 3: Rank starting stations by ride volume.
-- Step 4: Analyze ride counts by ending station.
-- Step 5: Exclude missing ending station names.
-- Step 6: Rank ending stations by ride volume.
-- Step 7: Identify the top 5 starting and ending stations.
--
-- KEY DIMENSIONS:
-- - Starting station
-- - Ending station
--
-- SOURCE TABLE:
-- cyclistic-bike-2026.cyclistic_analysis.trips_cleaned
-- =============================================

WITH station_usage AS (
  SELECT
    member_casual,
    start_station_name,
    COUNT(*) AS total_rides
  FROM
    `cyclistic-bike-2026.cyclistic_analysis.trips_cleaned`
  WHERE
    start_station_name IS NOT NULL
    AND TRIM(start_station_name) != ''
  GROUP BY
    member_casual,
    start_station_name
),

ranked_stations AS (
  SELECT
    member_casual,
    start_station_name,
    total_rides,
    ROUND(
      total_rides * 100.0 /
      SUM(total_rides) OVER (PARTITION BY member_casual),
      2
    ) AS percentage_of_known_station_rides,
    ROW_NUMBER() OVER (
      PARTITION BY member_casual
      ORDER BY total_rides DESC
    ) AS station_rank
  FROM
    station_usage
)

SELECT
  member_casual,
  station_rank,
  start_station_name,
  total_rides,
  percentage_of_known_station_rides
FROM
  ranked_stations
WHERE
  station_rank <= 10
ORDER BY
  member_casual,
  station_rank;
