#Total Revenue
SELECT 
ROUND(SUM(sales)) AS total_revenue
FROM blinkit_data;

#Revenue by City Tier
SELECT 
outlet_location_type AS city_tier,
ROUND(SUM(sales),2) AS revenue
FROM blinkit_data
GROUP BY outlet_location_type
ORDER BY revenue DESC;

#Revenue Share by City Tier (Percentage)
SELECT 
outlet_location_type AS city_tier,
ROUND(SUM(sales),2) AS revenue,
ROUND(SUM(sales) * 100 / 
      (SELECT SUM(sales) FROM blinkit_data),2) AS revenue_share_pct
FROM blinkit_data
GROUP BY outlet_location_type
ORDER BY revenue DESC;

#Revenue by Store Format
SELECT 
outlet_type,
ROUND(SUM(sales),2) AS total_revenue
FROM blinkit_data
GROUP BY outlet_type
ORDER BY total_revenue DESC;

#Revenue by Outlet Size
SELECT 
outlet_size,
ROUND(SUM(sales),2) AS revenue
FROM blinkit_data
GROUP BY outlet_size
ORDER BY revenue DESC;

#Top 10 Categories by Revenue
SELECT 
item_type,
ROUND(SUM(sales),2) AS revenue
FROM blinkit_data
GROUP BY item_type
ORDER BY revenue DESC
LIMIT 10;

#Average Rating by Store Type
SELECT 
outlet_type,
ROUND(AVG(rating),2) AS avg_rating
FROM blinkit_data
GROUP BY outlet_type
ORDER BY avg_rating DESC;

#Fat Category Sales
SELECT 
item_fat_content,
ROUND(SUM(sales),2) AS revenue
FROM blinkit_data
GROUP BY item_fat_content
ORDER BY revenue DESC;

#Visibility vs Sales (basic)
SELECT 
ROUND(AVG(item_visibility),3) AS avg_visibility,
ROUND(SUM(sales),2) AS revenue
FROM blinkit_data;

#Visibility vs Sales(deeper)
SELECT 
outlet_type,
ROUND(AVG(item_visibility),3) AS avg_visibility,
ROUND(SUM(sales),2) AS revenue
FROM blinkit_data
GROUP BY outlet_type;

#Revenue Concentration by Category
SELECT 
item_type,
SUM(sales) AS revenue,
ROUND(SUM(sales)*100 /
     (SELECT SUM(sales) FROM blinkit_data),2) AS revenue_pct
FROM blinkit_data
GROUP BY item_type
ORDER BY revenue DESC;














