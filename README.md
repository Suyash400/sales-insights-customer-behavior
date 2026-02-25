# Sales Insights & Customer Behavior Analysis using SQL

## Project Overview

This project analyzes a retail sales dataset using MySQL to study sales performance and customer purchasing behavior. The analysis focuses on identifying patterns within transactional data through structured SQL queries and exploratory analysis.

The work examines how sales vary across product categories, customer demographics, and time periods in order to derive meaningful observations from raw transactional data.

---

## Dataset Description

The dataset contains retail transaction records including customer information, product categories, and sales details.

### Columns

| Column | Description |
|-------|-------------|
| transaction_id | Unique identifier for each transaction |
| sale_date | Date of purchase |
| sale_time | Time of purchase |
| customer_id | Unique customer identifier |
| gender | Customer gender |
| age | Customer age |
| category | Product category |
| quantity | Number of items purchased |
| price_per_unit | Price per item |
| cogs | Cost of goods sold |
| total_sale | Total transaction value |

---

## Tools Used

- MySQL 8.0  
- MySQL Workbench  
- SQL  
- GitHub for version control

---

## Analysis Approach

The analysis was conducted through a structured workflow consisting of exploratory analysis followed by multiple stages of SQL-based investigation.

### Exploratory Data Analysis (EDA)

Exploratory Data Analysis was performed to understand dataset structure and validate data quality before deeper analysis. This included checking record completeness, reviewing category distributions, verifying date ranges, and examining demographic spread to ensure data consistency.

### Sales Analysis

Sales performance was evaluated using aggregation queries to analyze overall revenue behavior, category-wise performance, and daily variations in sales activity.

### Customer Behavior Analysis

Customer purchasing patterns were examined through demographic segmentation and spending behavior analysis. Age groups and gender-based comparisons were used to understand differences in purchasing activity and transaction distribution.

### Time-Based Analysis

Sales activity was analyzed across different time dimensions including hourly transaction patterns, weekday comparisons, and monthly trends to observe how purchasing behavior changes over time.

### Advanced SQL Analysis

Advanced SQL techniques such as window functions, ranking logic, subqueries, and common table expressions (CTEs) were applied to perform deeper analytical comparisons and revenue contribution analysis.

---

## SQL Concepts Used

- Filtering and conditional queries  
- Aggregate functions and GROUP BY  
- CASE statements for segmentation  
- Date and time functions  
- Exploratory Data Analysis (EDA) using SQL  
- Window functions (RANK, running totals)  
- Subqueries  
- Common Table Expressions (CTEs)

---

## Key Observations

- The analysis covered **1,987 transactions**, providing a consistent view of customer purchasing behavior across the dataset. Sales distribution indicates steady transaction activity rather than extreme spikes, suggesting balanced purchasing patterns over time.

- Across **three product categories**, revenue contribution differs noticeably. Higher-priced categories generate a larger share of total sales despite comparatively fewer transactions, indicating that transaction value plays a stronger role than purchase frequency.

- Customer activity is concentrated within a specific demographic range, where mid-age customers account for a substantial portion of overall transactions. This suggests a more active purchasing segment compared to younger and older age groups.

- Time-based analysis shows that transaction activity increases during evening hours, reflecting higher customer engagement later in the day compared to morning and afternoon periods.

- Monthly sales patterns demonstrate visible variation rather than uniform distribution, indicating shifts in purchasing behavior across different periods of the year.

- Customer spending is unevenly distributed, with a smaller subset of customers contributing a higher cumulative share of total sales, highlighting differences in purchasing intensity among customers.

---

## Author

Suyash Sharma  
GitHub: https://github.com/Suyash400
