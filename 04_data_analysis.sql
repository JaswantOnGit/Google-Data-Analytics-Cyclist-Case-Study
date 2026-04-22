-- ============================================================
-- Step 4: Key Analysis - Casual vs Member Rider Behavior
-- Author: Jaswant Singh | Google Data Analytics Capstone
-- Business Question: How do annual members and casual riders
-- use Cyclistic bikes differently?
-- ============================================================

-- 1. Average ride duration by membership type
SELECT
  member_casual,
  ROUND(AVG(ride_length_minutes), 2) AS avg_ride_minutes,
  COUNT(*) AS total_rides
FROM cyclistic.cleaned_trips
GROUP BY member_casual;

-- 2. Total rides per day of week (1=Sunday, 7=Saturday)
SELECT
  member_casual,
  day_of_week,
  COUNT(*) AS total_rides,
  ROUND(AVG(ride_length_minutes), 2) AS avg_ride_minutes
FROM cyclistic.cleaned_trips
GROUP BY member_casual, day_of_week
ORDER BY member_casual, day_of_week;

-- 3. Most popular start stations for casual riders
-- (targets conversion opportunity locations)
SELECT
  start_station_name,
  COUNT(*) AS ride_count
FROM cyclistic.cleaned_trips
WHERE member_casual = 'casual'
  AND start_station_name IS NOT NULL
GROUP BY start_station_name
ORDER BY ride_count DESC
LIMIT 10;

-- 4. Ride volume by month (seasonal trends)
SELECT
  member_casual,
  EXTRACT(MONTH FROM started_at) AS ride_month,
  COUNT(*) AS total_rides,
  ROUND(AVG(ride_length_minutes), 2) AS avg_duration
FROM cyclistic.cleaned_trips
GROUP BY member_casual, ride_month
ORDER BY ride_month;

-- 5. Bike type preference by rider type
SELECT
  member_casual,
  rideable_type,
  COUNT(*) AS total_rides,
  ROUND(COUNT(*) * 100.0 / SUM(COUNT(*)) OVER (PARTITION BY member_casual), 1) AS pct_of_group
FROM cyclistic.cleaned_trips
GROUP BY member_casual, rideable_type
ORDER BY member_casual, total_rides DESC;

-- Key Findings Summary:
-- - Casual riders average longer trips but ride less frequently
-- - Members ride more on weekdays; casuals peak on weekends
-- - Casual riders favor lakefront and tourist-area stations
-- - Electric bikes are popular with both segments
