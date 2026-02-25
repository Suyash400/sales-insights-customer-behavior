-- Peak shopping hour 
SELECT HOUR(sale_time) AS hour_of_day, SUM(total_sale) AS revenue
FROM sales
GROUP BY hour_of_day
ORDER BY revenue DESC;

-- Monthly revenue trend
SELECT MONTH(sale_date), SUM(total_sale)
FROM sales
GROUP BY MONTH(sale_date);

-- Day of week performance
SELECT DAYNAME(sale_date) AS Name, SUM(total_sale) as Total_revenue
FROM sales
GROUP BY DAYNAME(sale_date);

-- Comparing revenue on weekend and weekday
SELECT
CASE
    WHEN DAYOFWEEK(sale_date) IN (1,7) THEN 'Weekend'
    ELSE 'Weekday'
END AS day_type,
SUM(total_sale) AS total_revenue
FROM sales
GROUP BY day_type;
-- Revenue insights
SELECT sale_date, SUM(total_sale)
OVER(ORDER BY sale_date) AS running_revenue
FROM sales;

-- Best performing month
SELECT MONTH(sale_date) AS month, SUM(total_sale) AS revenue
FROM sales
GROUP BY month
ORDER BY revenue DESC
LIMIT 1;

-- Average sale per month and best selling month each year
SELECT
YEAR(sale_date) AS year,
MONTH(sale_date) AS month,
AVG(total_sale) AS avg_sale
FROM sales
GROUP BY year, month
ORDER BY year, month;