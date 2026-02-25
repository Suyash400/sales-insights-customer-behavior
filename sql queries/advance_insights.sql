-- Ranking transactions within each category
SELECT category, transaction_id, total_sale,
RANK() OVER(
    PARTITION BY category
    ORDER BY total_sale DESC
) AS sales_rank
FROM sales;

-- Revenue contribution by category
SELECT
category,
SUM(total_sale) AS category_revenue,
ROUND(
    SUM(total_sale) * 100 /
    SUM(SUM(total_sale)) OVER(),
    2
) AS revenue_percentage
FROM sales
GROUP BY category;

-- Top customers
WITH customer_spending AS (
    SELECT
        customer_id,
        SUM(total_sale) AS total_spent
    FROM sales
    GROUP BY customer_id
)

SELECT *
FROM customer_spending
ORDER BY total_spent DESC
LIMIT 10;

-- Orders by shift timing
SELECT
CASE
    WHEN HOUR(sale_time) <= 12 THEN 'Morning'
    WHEN HOUR(sale_time) BETWEEN 13 AND 17 THEN 'Afternoon'
    ELSE 'Evening'
END AS shift_period,
COUNT(*) AS total_orders
FROM sales
GROUP BY shift_period
ORDER BY total_orders DESC;

-- Unique customers per category
SELECT category,
COUNT(DISTINCT customer_id) AS unique_customers
FROM sales
GROUP BY category;