# blinkit-sales-analysis
Retail sales analysis using SQL and Power BI

# Blinkit Retail Sales Analysis

This project analyzes grocery retail sales data from Blinkit to identify patterns in outlet performance, product categories, and revenue distribution. The objective was to build a complete analytics workflow starting from raw data ingestion to SQL analysis and dashboard visualization.

## Tools Used
- MySQL
- SQL
- DBeaver
- Power BI
- DAX (Data Analysis Expressions)

## Dataset
The dataset contains more than 8,500 records of grocery product sales across multiple outlet types, outlet sizes, and city tiers.

## Project Workflow
1. Imported the raw CSV dataset into MySQL and designed the table schema.
2. Validated the dataset structure and handled missing values.
3. Used SQL queries to generate key business metrics such as revenue by city tier, outlet type, and product category.
4. Created analytical measures using DAX in Power BI.
5. Built a dashboard to visualize sales performance and identify patterns across stores and product categories.

## Key Insights
- Tier 3 cities generate the highest share of revenue.
- Medium sized outlets outperform both small and large outlets in total sales.
- A small number of product categories contribute a large portion of total revenue.

## Repository Structure

data/        → dataset used for analysis  
sql/         → SQL queries used in the project  
dashboard/   → Power BI dashboard file  
visuals/     → dashboard screenshots  

