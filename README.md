# Cyclistic Bike-Share Analysis

## Project Overview

This project analyzes Cyclistic's bike-sharing data to identify differences in riding behavior between annual members and casual riders. The analysis aims to uncover usage patterns, understand customer behavior, and provide data-driven insights that can help Cyclistic develop strategies to convert casual riders into annual members.

The project follows an end-to-end data analysis process, including data collection, data cleaning, data processing, exploratory data analysis (EDA), and data visualization.

## Business Task

Cyclistic wants to understand how annual members and casual riders use its bike-sharing services differently.

The main business question is:

**How do annual members and casual riders use Cyclistic bikes differently?**

The findings will help the marketing team develop targeted strategies to encourage casual riders to purchase annual memberships.

## Dataset Description

This project uses Cyclistic's historical bike-sharing trip data covering a 12-month period, from November 2025 to October 2026.

The datasets contain individual bike trip records, including ride identifiers, bike types, ride start and end timestamps, station details, geographic coordinates, and rider classifications.

| Dataset Attribute | Description |
|---|---|
| Data Source | Cyclistic Historical Trip Data |
| Coverage Period | November 2025 – October 2026 |
| Data Frequency | Monthly datasets |
| Number of Source Datasets | 12 |
| Data Type | Structured trip-level data |
| Primary Analysis Groups | Annual Members and Casual Riders |
| Storage & Processing | Google BigQuery |

The monthly datasets were imported into Google BigQuery, combined into a consolidated table, and processed to prepare the data for further analysis.

## Tools & Technologies

- **Google BigQuery:** Data storage, data cleaning, data processing, and SQL analysis.
- **SQL:** Data transformation, aggregation, and exploratory data analysis.
- **Google Data Studio (Formerly Looker):** Interactive dashboard development and data visualization.
- **GitHub:** Project documentation and version control.

## Data Analysis Process

### 1. Data Collection

The analysis uses Cyclistic historical bike-sharing trip data. The datasets contain information about individual rides, including ride IDs, bike types, start and end timestamps, station information, geographic coordinates, and rider classifications.

### 2. Data Cleaning & Preparation

The raw datasets were combined and processed using SQL in Google BigQuery.

The preparation process included:
- Combining monthly datasets.
- Reviewing data types and data consistency.
- Identifying and handling missing values.
- Removing invalid or irrelevant records.
- Creating additional columns to support further analysis.

### 3. Data Analysis

SQL queries were used to explore differences between annual members and casual riders, focusing on:

- Monthly riding patterns.
- Daily riding behavior.
- Hourly riding patterns.
- Ride duration.
- Bike type preferences.
- Differences in usage between member and casual riders.

## 4. Key Findings

The analysis revealed several differences in riding behavior between annual members and casual riders.

| Key Metric | Result |
|---|---:|
| Total Rides Analyzed | 6,284,660 |
| Member Ride Share | 64.47% |
| Casual Ride Share | 35.53% |
| Average Casual Ride Duration | 17.44 minutes |
| Average Member Ride Duration | 11.87 minutes |
| Casual Weekend Ride Share | 36.65% |
| Member Weekend Ride Share | 23.30% |

### Key Insights

**1. Different Riding Purposes**

Casual riders have a longer average ride duration (17.44 minutes) compared to annual members (11.87 minutes). This suggests that casual riders may use the service more for leisure-oriented trips, while members may rely more on bikes for shorter, routine journeys.

**2. Different Weekly Riding Patterns**

Casual riders have a higher weekend ride share (36.65%) than annual members (23.30%). This indicates stronger weekend-oriented usage among casual riders.

**3. Seasonal Riding Patterns**

Casual riders demonstrate stronger activity during warmer months and summer periods, suggesting an opportunity for seasonal marketing campaigns.

**4. Bike Type Preferences**

The analysis also identifies differences in electric-bike usage between casual riders and annual members, providing an opportunity to tailor membership promotions around bike preferences.

**5. Geographic Riding Patterns**

Casual rider activity is concentrated around waterfront and recreational areas, suggesting potential opportunities for location-based marketing and partnerships.

### 5. Data Visualization

The processed data was visualized using Google Data Studio to create an interactive dashboard that highlights key findings and riding behavior patterns.

## Dashboard Preview

**Explore the interactive dashboard by clicking the preview below.**

[![Cyclistic Dashboard Preview](images/dashboard_page_1.png)](https://datastudio.google.com/reporting/80b1cea4-4b84-440b-a8dd-93ec5a39c4c7)

[![Cyclistic Dashboard - Page 2](images/dashboard_page_2.png)](https://datastudio.google.com/reporting/80b1cea4-4b84-440b-a8dd-93ec5a39c4c7)

[**View Interactive Dashboard on Looker Studio →**](https://datastudio.google.com/reporting/80b1cea4-4b84-440b-a8dd-93ec5a39c4c7)

## 6. Business Recommendations

Based on the findings, the following recommendations aim to increase annual membership conversions by addressing the different riding behaviors and preferences of casual riders.

### a. Introduce Weekend-to-Membership Conversion Campaigns

**Insight:** Casual riders demonstrate a higher proportion of weekend rides (36.65%) compared to annual members (23.30%).

**Recommendation:** Launch targeted weekend campaigns that encourage frequent casual weekend riders to transition into annual memberships. Promotional messaging could emphasize the long-term value and convenience of membership for customers who regularly ride on weekends.

**Suggested Actions:**
- Introduce targeted membership offers during weekends.
- Promote annual membership benefits through in-app notifications.
- Develop campaigns targeting casual riders with recurring weekend activity.

**Success Metrics (KPIs):**
- Weekend casual-to-member conversion rate.
- Number of new memberships generated through weekend campaigns.
- Membership conversion rate among targeted casual riders.

### b. Develop Seasonal Membership Campaigns

**Insight:** Casual riders demonstrate stronger activity during warmer months and summer periods.

**Recommendation:** Take advantage of seasonal demand by introducing membership campaigns during periods of increased casual rider activity.

**Suggested Actions:**
- Launch seasonal membership promotions before and during peak riding periods.
- Offer limited-time membership incentives.
- Use seasonal marketing campaigns to convert occasional riders into regular customers.

**Success Metrics (KPIs):**
- Monthly membership conversion rate.
- Number of new members acquired during seasonal campaigns.
- Campaign engagement and redemption rates.

### c. Implement Location-Based Marketing Strategies

**Insight:** Casual rider activity is concentrated around waterfront and recreational areas.

**Recommendation:** Use high-traffic recreational locations as opportunities to engage casual riders and introduce annual membership benefits.

**Suggested Actions:**
- Place promotional materials at strategically selected recreational locations.
- Partner with local businesses and recreational destinations.
- Use location-based digital marketing to reach casual riders.

**Success Metrics (KPIs):**
- Membership sign-ups attributed to location-based campaigns.
- Conversion rates by targeted location.
- Partnership campaign engagement.

### d. Highlight Electric Bike Benefits in Membership Promotions

**Insight:** Differences in electric-bike usage between casual riders and annual members indicate that bike preferences can be considered when developing membership campaigns.

**Recommendation:** Incorporate electric-bike benefits and relevant membership features into promotional messaging to attract casual riders who frequently choose electric bikes.

**Suggested Actions:**
- Highlight electric-bike access and related membership benefits.
- Develop promotional messaging based on bike-type preferences.
- Evaluate whether electric-bike-focused campaigns generate higher conversion rates.

**Success Metrics (KPIs):**
- Electric-bike usage among newly acquired members.
- Membership conversion rate by bike preference.
- Engagement with electric-bike-related promotions.

### Expected Business Impact

By implementing these strategies, Cyclistic can better align its marketing initiatives with casual riders' actual usage patterns.

The recommendations aim to:
- Increase annual membership conversions.
- Improve customer acquisition efficiency.
- Strengthen customer engagement during peak riding periods.
- Identify high-potential customer segments and locations.
- Support more data-driven marketing decisions.

## Repository Structure

```text
cyclistic-bike-share-analysis/
│
├── README.md
│
├── images/
│   ├── dashboard_page_1.png
│   └── dashboard_page_2.png
│
└── SQL/
    ├── 01_data_combination.sql
    ├── 02_data_cleaning.sql
    ├── 03_data_exploration.sql
    ├── ...
    └── 11_visualization_table.sql
```

## Key Findings

The analysis explores how annual members and casual riders differ in their usage patterns, including their preferred riding days, hours, months, ride durations, and bike types.

These insights provide a foundation for identifying opportunities to improve customer engagement and increase annual membership conversions.

## Conclusion

This project demonstrates an end-to-end data analytics workflow, from preparing raw datasets to analyzing customer behavior and presenting insights through an interactive dashboard.

By understanding the differences between casual riders and annual members, Cyclistic can develop more targeted marketing strategies and make data-driven business decisions.

---

**Project:** Cyclistic Bike-Share Analysis  
**Tools:** SQL | Google BigQuery | Google Data Studio | GitHub

*This project demonstrates an end-to-end data analytics workflow, including data preparation, SQL analysis, data visualization, and business recommendations.*
