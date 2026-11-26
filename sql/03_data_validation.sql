-- =============================================
-- PROJECT: Cyclistic Bike-Share Analysis
-- FILE: 03_data_validation.sql
-- PURPOSE: Validate the quality and consistency of cleaned data
-- PERIOD: November 2025 - October 2026
-- TOOL: Google BigQuery
-- =============================================

-- DATA VALIDATION PROCESS
--
-- Step 1: Check the total number of cleaned records.
-- Step 2: Verify ride ID uniqueness.
-- Step 3: Check for NULL values in essential columns.
-- Step 4: Verify that all ride durations are valid.
-- Step 5: Confirm the analysis date range.
-- Step 6: Compare ride counts by rider type.
--
-- EXPECTED OUTPUT:
-- A validated dataset ready for exploratory data analysis.
--
-- SOURCE TABLE:
-- cyclistic-bike-2026.cyclistic_analysis.trips_cleaned
-- =============================================

SELECT
  COUNT(*) AS total_rows,
  COUNT(DISTINCT ride_id) AS unique_ride_ids,

  COUNTIF(ride_id IS NULL) AS null_ride_id,
  COUNTIF(started_at IS NULL) AS null_started_at,
  COUNTIF(ended_at IS NULL) AS null_ended_at,
  COUNTIF(member_casual IS NULL) AS null_member_casual,

  COUNTIF(
    TIMESTAMP_DIFF(ended_at, started_at, MICROSECOND) < 1000000
  ) AS rides_under_1_second,

  COUNTIF(
    TIMESTAMP_DIFF(ended_at, started_at, MICROSECOND) > 86400000000
  ) AS rides_over_24_hours,

  MIN(DATE(started_at, 'America/Chicago')) AS first_local_date,
  MAX(DATE(started_at, 'America/Chicago')) AS last_local_date

FROM
  `cyclistic-bike-2026.cyclistic_analysis.trips_cleaned`;
