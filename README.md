# Blinkit Sales Analysis

Retail sales analysis using **SQL and Power BI** to uncover patterns in outlet performance, product categories, and revenue distribution.

---

# Business Problem

Retail platforms generate large volumes of transactional data, but identifying meaningful patterns across stores, product categories, and locations requires structured analysis.

This project analyzes Blinkit grocery sales data to understand how outlet characteristics, product categories, and city tiers influence revenue performance.

The objective is to extract insights that could help guide decisions around store expansion, product focus, and operational strategy.

---

# Dataset

The dataset contains **8,500+ records** of grocery product sales across multiple:

- product categories
- outlet types
- outlet sizes
- city tiers

Each record includes product attributes, outlet information, and total sales value.

---

# Tools Used

- **MySQL** – data storage and querying  
- **SQL** – data analysis and aggregation  
- **DBeaver** – database management  
- **Power BI** – dashboard visualization  
- **DAX** – analytical measures in Power BI  

---

# Project Workflow

1. Imported the raw CSV dataset into MySQL.
2. Designed the table schema and validated dataset structure.
3. Cleaned missing values and verified data consistency.
4. Used SQL queries to compute business metrics such as:
   - revenue by outlet type
   - revenue by product category
   - revenue by city tier
5. Built analytical measures using DAX in Power BI.
6. Created a dashboard to visualize sales distribution and outlet performance.
7. Performed deeper SQL analysis to extract business insights.

---

# Analysis Breakdown

## Part 1 — Data Analysis & Dashboard

Focus:
- Data ingestion into MySQL
- SQL aggregation queries
- Power BI dashboard creation

The dashboard highlights sales distribution across outlet types, city tiers, and product categories.

---

## Part 2 — Advanced SQL Analytics

This phase focuses on answering deeper business questions directly using SQL.

Analyses performed:

- Revenue contribution by product category
- Category ranking using SQL window functions
- Store format performance comparison
- Store age vs revenue analysis
- Product visibility impact on sales

These queries demonstrate the use of **aggregations, ranking functions, and analytical SQL techniques.**

---

# Key Insights

- **Tier 3 cities generate the highest share of revenue.**
- **Medium-sized outlets outperform both small and large outlets.**
- **Fruits & Vegetables and Snack Foods are the largest revenue drivers.**
- Revenue distribution across categories follows a **Pareto-style pattern**.
- Store age does not strongly determine revenue performance.

---

# Repository Structure

```
blinkit-sales-analysis
│
├── data
│   └── blinkit_data.csv
│
├── sql
│   ├── schema.sql
│   ├── analysis_queries.sql
│   └── advanced_analysis.sql
│
├── dashboard
│   └── blinkit_dashboard.pbix
│
├── visuals
│   └── analysis charts and screenshots
│
└── README.md
```

---

# Dashboard

The Power BI dashboard visualizes:

- revenue by outlet type
- revenue by city tier
- product category performance
- outlet size comparison
- overall sales distribution
