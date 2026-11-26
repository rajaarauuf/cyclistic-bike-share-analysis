-- =============================================
-- PROJECT: Cyclistic Bike-Share Analysis
-- FILE: 11_visualization_table.sql
-- PURPOSE: Prepare the final dataset for dashboard visualization
-- PERIOD: November 2025 - October 2026
-- TOOL: Google BigQuery
-- =============================================

-- VISUALIZATION DATA PREPARATION
--
-- Step 1: Select relevant fields from the cleaned dataset.
-- Step 2: Create local ride date and month dimensions.
-- Step 3: Extract day of the week and chronological day order.
-- Step 4: Extract the local starting hour.
-- Step 5: Include ride duration in minutes.
-- Step 6: Retain relevant rider and station information.
-- Step 7: Create the final visualization table.
--
-- OUTPUT TABLE:
-- cyclistic-bike-2026.cyclistic_analysis.trips_visualization
-- =============================================

CREATE TABLE
  `cyclistic-bike-2026.cyclistic_analysis.trips_visualization`
AS
SELECT
  *,
  DATE(started_at, 'America/Chicago') AS ride_date_local,
  DATE_TRUNC(
    DATE(started_at, 'America/Chicago'),
    MONTH
  ) AS ride_month,
  FORMAT_DATE(
    '%A',
    DATE(started_at, 'America/Chicago')
  ) AS day_of_week,
  EXTRACT(
    DAYOFWEEK FROM DATE(started_at, 'America/Chicago')
  ) AS day_order,
  EXTRACT(
    HOUR FROM started_at AT TIME ZONE 'America/Chicago'
  ) AS ride_hour,
  TIMESTAMP_DIFF(
    ended_at,
    started_at,
    SECOND
  ) / 60.0 AS ride_duration_minutes
FROM
  `cyclistic-bike-2026.cyclistic_analysis.trips_cleaned`;
