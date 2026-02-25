-- Total revenue generated
SELECT SUM(total_sale) AS total_revenue
FROM sales;

-- Total number of orders
SELECT COUNT(*) AS total_transactions
FROM sales;

-- Total products sold
SELECT SUM(quantity) AS total_items_sold
FROM sales;

-- Average customer spending per order
SELECT AVG(total_sale) AS avg_order_value
FROM sales;

-- Daily revenue trend
SELECT sale_date, SUM(total_sale) AS daily_revenue
FROM sales
GROUP BY sale_date
ORDER BY sale_date;

-- Highest sales date of the year
SELECT sale_date, SUM(total_sale) AS revenue
FROM sales
GROUP BY sale_date
ORDER BY revenue DESC
LIMIT 1;

-- Lowest sales date of the year
SELECT sale_date, SUM(total_sale) AS revenue
FROM sales
GROUP BY sale_date
ORDER BY revenue ASC
LIMIT 1;

-- Revenue generated in relation with category
SELECT category, SUM(total_sale) AS total_revenue
FROM sales
GROUP BY category
ORDER BY total_revenue DESC;

-- Quantity sold throughout by category
SELECT category, SUM(quantity) AS items_sold
FROM sales
GROUP BY category
ORDER BY items_sold DESC;

-- Profit earned in relation by category
SELECT category, SUM(total_sale - cogs) AS total_profit
FROM sales
GROUP BY category
ORDER BY total_profit DESC;

-- Total sales for each category
SELECT category,
SUM(total_sale) AS total_sales
FROM sales
GROUP BY category;

-- Average age of customers buying Beauty products
SELECT AVG(age) AS avg_customer_age
FROM sales
WHERE category = 'Beauty';