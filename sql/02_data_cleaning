-- =============================================
-- PROJECT: Cyclistic Bike-Share Analysis
-- FILE: 02_data_cleaning.sql
-- PURPOSE: Clean and prepare the combined dataset
-- PERIOD: November 2025 - October 2026
-- TOOL: Google BigQuery
-- =============================================

-- DATA CLEANING PROCESS
--
-- Step 1: Identify and remove duplicate ride IDs.
-- Step 2: Exclude records with invalid timestamps.
-- Step 3: Exclude rides with a duration below 1 second.
-- Step 4: Exclude rides with a duration exceeding 24 hours.
-- Step 5: Convert timestamps into Chicago local time.
-- Step 6: Retain records within the analysis period.
-- Step 7: Create the cleaned dataset for further analysis.
--
-- OUTPUT TABLE:
-- cyclistic-bike-2026.cyclistic_analysis.trips_cleaned
-- =============================================

CREATE OR REPLACE TABLE
  `cyclistic-bike-2026.cyclistic_analysis.trips_cleaned`
AS

SELECT DISTINCT
  *
FROM
  `cyclistic-bike-2026.cyclistic_analysis.trips_12_months`

WHERE
  -- Keep only the selected analysis period
  DATE(started_at, 'America/Chicago')
    BETWEEN DATE '2025-11-01'
    AND DATE '2026-10-31'

  -- Exclude zero or negative durations
  AND TIMESTAMP_DIFF(
    ended_at, started_at, MICROSECOND
  ) > 0

  -- Exclude rides shorter than one second
  AND TIMESTAMP_DIFF(
    ended_at, started_at, MICROSECOND
  ) >= 1000000

  -- Exclude rides longer than 24 hours
  AND TIMESTAMP_DIFF(
    ended_at, started_at, MICROSECOND
  ) <= 86400000000;
