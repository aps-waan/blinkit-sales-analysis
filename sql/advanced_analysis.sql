use blinkit_deliveries;


# ------Revenue Contribution Analysis------
SELECT
    item_type,
    SUM(sales) AS revenue,
    ROUND(SUM(sales)*100 /
        (SELECT SUM(sales) FROM blinkit_data),2) AS revenue_pct
FROM blinkit_data
GROUP BY item_type
ORDER BY revenue DESC;



#-------Category Revenue Ranking--------
SELECT
    item_type,
    SUM(sales) AS revenue,
    RANK() OVER (ORDER BY SUM(sales) DESC) AS revenue_rank
FROM blinkit_data
GROUP BY item_type;



#-------Store Format Performance Analysis---------
SELECT
    outlet_type,
    COUNT(outlet_identifier) AS stores,
    SUM(sales) AS revenue,
    AVG(sales) AS avg_sales
FROM blinkit_data
GROUP BY outlet_type
ORDER BY revenue DESC;


#-------Store Age vs Revenue---------
SELECT
    outlet_establishment_year as year,
    SUM(sales) AS revenue
FROM blinkit_data
GROUP BY outlet_establishment_year
ORDER BY outlet_establishment_year;


#-------Visibility Impact on Sales---------
SELECT
    outlet_type,
    AVG(item_visibility) AS avg_visibility,
    SUM(sales) AS revenue
FROM blinkit_data
GROUP BY outlet_type;


#-------Top Product Categories-------
SELECT
    item_type,
    COUNT(*) AS pdt_count,
    SUM(sales) AS revenue
FROM blinkit_data
GROUP BY item_type
ORDER BY revenue DESC
LIMIT 10;


