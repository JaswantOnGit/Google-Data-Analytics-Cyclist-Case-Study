-- ============================================================
-- Step 1: Combine 12 months of Cyclistic trip data
-- Author: Jaswant Singh | Google Data Analytics Capstone
-- Description: Union all monthly CSV tables into one master table
-- ============================================================

CREATE TABLE cyclistic.all_trips AS
SELECT * FROM cyclistic.trips_2023_01
UNION ALL
SELECT * FROM cyclistic.trips_2023_02
UNION ALL
SELECT * FROM cyclistic.trips_2023_03
UNION ALL
SELECT * FROM cyclistic.trips_2023_04
UNION ALL
SELECT * FROM cyclistic.trips_2023_05
UNION ALL
SELECT * FROM cyclistic.trips_2023_06
UNION ALL
SELECT * FROM cyclistic.trips_2023_07
UNION ALL
SELECT * FROM cyclistic.trips_2023_08
UNION ALL
SELECT * FROM cyclistic.trips_2023_09
UNION ALL
SELECT * FROM cyclistic.trips_2023_10
UNION ALL
SELECT * FROM cyclistic.trips_2023_11
UNION ALL
SELECT * FROM cyclistic.trips_2023_12;

-- Verify total row count
SELECT COUNT(*) AS total_rows FROM cyclistic.all_trips;

-- Preview schema
SELECT
  ride_id,
  rideable_type,
  started_at,
  ended_at,
  start_station_name,
  end_station_name,
  member_casual
FROM cyclistic.all_trips
LIMIT 10;
