# 🚴 Google Data Analytics Capstone: Cyclistic Bike-Share Case Study

## Project Overview

This is the capstone project for the **Google Data Analytics Professional Certificate**. The goal was to analyze 12 months of Cyclistic bike-share trip data to understand how **casual riders** and **annual members** use bikes differently — and to provide data-driven recommendations to convert casual riders into members.

**Business Question:** How do annual members and casual riders use Cyclistic bikes differently?

---

## Tools & Technologies

| Tool | Purpose |
|------|---------|
| **BigQuery (SQL)** | Data ingestion, combining, cleaning, and analysis |
| **Google Sheets / Excel** | Spot-checking and lightweight exploration |
| **Tableau / Google Slides** | Visualization and stakeholder presentation |

---

## Dataset

- **Source:** [Divvy Bikes Public Data](https://divvy-tripdata.s3.amazonaws.com/index.html) (made available by Motivate International Inc. under a public license)
- **Period:** 12 months of trip data
- **Volume:** ~5.7 million rows before cleaning
- **Key columns:** `ride_id`, `rideable_type`, `started_at`, `ended_at`, `start_station_name`, `end_station_name`, `member_casual`

> **Note:** Personally identifiable information (PII) is not included in the dataset. Rider passes are anonymized.

---

## SQL Files

| File | Description |
|------|-------------|
| `01_data_combining.sql` | Combines 12 monthly CSV tables into a single unified table using `UNION ALL` |
| `04_data_analysis.sql` | Core analysis queries: ride duration, day-of-week patterns, top stations, seasonal trends, and bike type preferences |

---

## Key Findings

### 1. Ride Duration
- **Casual riders** take significantly longer rides on average (~28 min) vs. **members** (~12 min)
- Casual riders appear to use bikes for leisure; members use them for commutes

### 2. Day-of-Week Patterns
- **Members** ride most on weekdays (commuter behavior)
- **Casual riders** peak on weekends (recreational behavior)

### 3. Top Start Stations
- Casual riders cluster around tourist/leisure areas (lakefront, parks)
- Members cluster around business districts and transit hubs

### 4. Seasonal Trends
- Both groups peak in **summer (June–August)**
- Casual ridership drops sharply in winter — presenting a marketing window before peak season

### 5. Bike Type Preference
- Electric bikes are growing in popularity among both groups
- Casual riders show a slightly higher preference for docked bikes

---

## Recommendations

1. **Launch a seasonal membership campaign** in late spring (April–May) when casual ridership is climbing
2. **Target top casual-rider stations** (lakefront, tourist areas) with in-app upgrade prompts and station signage
3. **Offer a weekend pass → annual upgrade** path to capture weekend leisure riders
4. **Highlight commute savings** in marketing to casual riders who ride on weekdays

---

## Skills Demonstrated

`SQL` `BigQuery` `Data Cleaning` `Exploratory Data Analysis` `Data Visualization` `Business Storytelling` `Google Data Analytics`

---

## Certificate

This project was completed as part of the [Google Data Analytics Professional Certificate](https://www.coursera.org/professional-certificates/google-data-analytics) on Coursera.

---

*Jaswant Singh | [GitHub](https://github.com/JaswantOnGit)*
