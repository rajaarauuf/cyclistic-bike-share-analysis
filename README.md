# Cyclistic Bike-Share Analysis
### Understanding Rider Behavior to Increase Annual Memberships

## 1. Project Overview

This project analyzes Cyclistic bike-share usage patterns to understand how annual members and casual riders use the service differently.

Using 12 months of historical ride data from November 2025 to October 2026, this analysis explores differences in riding behavior, including ride frequency, duration, time of usage, bike preferences, and station popularity.

The ultimate goal is to identify opportunities to convert casual riders into annual members through data-driven business recommendations.

## 2. Business Problem

Cyclistic aims to increase its annual membership base by converting existing casual riders into annual members.

To support this objective, the marketing team needs to understand how casual riders and annual members differ in their usage patterns.

The key business question is:

**How do annual members and casual riders use Cyclistic bikes differently?**

## 3. Business Objectives

- Compare ride volumes between annual members and casual riders.
- Identify differences in average ride duration.
- Analyze riding patterns by day of the week and hour of the day.
- Identify monthly usage trends.
- Compare bike type preferences.
- Identify the most popular starting and ending stations.
- Develop data-driven recommendations to encourage casual riders to become annual members.

## 4. Dataset Description

The analysis uses 12 monthly Cyclistic bike-share datasets covering November 2025 through October 2026.

The datasets were combined into a single analytical table before data cleaning and exploratory analysis.

**Analysis period:** November 1, 2025 – October 31, 2026  
**Final cleaned records:** 6,284,660 rides

## 5. Tools & Technologies

- **Google BigQuery:** Data storage, cleaning, transformation, and SQL analysis.
- **SQL:** Data preparation, validation, and exploratory data analysis.
- **Google Looker Studio:** Interactive dashboard development.
- **GitHub:** SQL documentation and project versioning.

## 6. Data Preparation

The data preparation process included:

1. Combining 12 monthly datasets using SQL.
2. Identifying and removing duplicate ride IDs.
3. Excluding records with invalid timestamps.
4. Excluding rides shorter than one second.
5. Excluding rides longer than 24 hours based on the project's analytical criteria.
6. Converting timestamps into the Chicago local timezone.
7. Filtering records to the selected 12-month analysis period.
8. Validating the cleaned dataset for completeness and consistency.

After cleaning, the final dataset contained **6,284,660 rides**.

## 7. Exploratory Data Analysis

The analysis covered the following areas:

- Rider type distribution
- Ride duration comparison
- Weekly riding patterns
- Hourly riding patterns
- Monthly ride trends
- Bike type preferences
- Popular starting and ending stations

## 8. Key Findings

| Metric | Result |
|---|---:|
| Total rides | 6,284,660 |
| Member ride share | 64.47% |
| Casual ride share | 35.53% |
| Casual average ride duration | 17.44 minutes |
| Member average ride duration | 11.87 minutes |
| Casual weekend ride share | 36.65% |
| Member weekend ride share | 23.30% |

### Key Insights

- Casual riders have longer average ride durations than annual members.
- Casual riders account for a larger proportion of weekend rides.
- Casual ride activity reaches its highest level during July.
- Casual riders show a higher proportion of electric bike usage compared with annual members.
- Popular casual rider stations are concentrated around waterfront and recreational destinations, while member activity is more concentrated around central urban areas.

## 9. Business Recommendations

Based on the observed riding patterns:

1. **Weekend Membership Campaigns:** Introduce targeted membership promotions during weekends when casual riding activity is relatively high.
2. **Seasonal Marketing Campaigns:** Increase membership acquisition campaigns during warmer months when casual ride volumes increase.
3. **Location-Based Promotions:** Focus promotional activities around stations popular among casual riders, particularly recreational and waterfront areas.
4. **Electric Bike Membership Benefits:** Highlight the convenience and value of electric bike access in membership marketing.

These recommendations are proposed opportunities based on observed ride patterns and should be further evaluated through campaign testing.

## 10. Interactive Dashboard

Explore the interactive Looker Studio dashboard:

**[View Cyclistic Dashboard](INSERT_YOUR_LOOKER_STUDIO_LINK)**

The dashboard includes rider type and month filters to explore differences in riding behavior across the analysis period.

## 11. SQL Queries

All SQL scripts used throughout this project are available in the `sql/` directory.

The scripts document the complete analytical workflow, from data combination and cleaning to exploratory analysis and dashboard preparation.

## 12. Project Structure

```text
cyclistic-bike-share-analysis/
│
├── README.md
│
├── sql/
│   ├── 01_data_combination.sql
│   ├── 02_data_cleaning.sql
│   ├── 03_data_validation.sql
│   ├── 04_rider_type_analysis.sql
│   ├── 05_ride_duration_analysis.sql
│   ├── 06_weekly_patterns.sql
│   ├── 07_hourly_patterns.sql
│   ├── 08_monthly_trends.sql
│   ├── 09_bike_type_analysis.sql
│   ├── 10_station_analysis.sql
│   └── 11_visualization_table.sql
│
└── images/
    ├── dashboard_page_1.png
    └── dashboard_page_2.png
```

---

*This project demonstrates an end-to-end data analytics workflow, including data preparation, SQL analysis, data visualization, and business recommendations.*
