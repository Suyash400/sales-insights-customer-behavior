-- Number of purchases by gender
SELECT gender, COUNT(*) AS total_orders
FROM sales
GROUP BY gender;

-- Revenue earned by gender
SELECT gender, SUM(total_sale) AS total_revenue
FROM sales
GROUP BY gender
ORDER BY total_revenue DESC;

-- Average spending done by a person
SELECT gender, AVG(total_sale) AS avg_spending
FROM sales
GROUP BY gender;

-- Customer age insights
SELECT MIN(age) AS youngest_customer, MAX(age) AS oldest_customer, AVG(age) AS average_age
FROM sales;

-- Grouping customers
SELECT
CASE
 WHEN age < 25 THEN 'Young'
 WHEN age BETWEEN 25 AND 45 THEN 'Adult'
 ELSE 'Senior'
END AS age_group,
COUNT(*) AS total_orders,
SUM(total_sale) AS revenue
FROM sales
GROUP BY age_group
ORDER BY revenue DESC;

-- Top 10 customers by spending
SELECT customer_id, SUM(total_sale) AS total_spent
FROM sales
GROUP BY customer_id
ORDER BY total_spent DESC
LIMIT 10;

-- Purchase frequency per customer
SELECT customer_id, COUNT(*) AS number_of_orders
FROM sales
GROUP BY customer_id
ORDER BY number_of_orders DESC;

-- Category preference of customers based on genders 
SELECT gender, category, COUNT(*) AS purchases
FROM sales
GROUP BY gender, category
ORDER BY gender, purchases DESC;

-- Revenue earned by age and category
SELECT
CASE
 WHEN age < 25 THEN 'Young'
 WHEN age BETWEEN 25 AND 45 THEN 'Adult'
 ELSE 'Senior'
END AS age_group,
category,
SUM(total_sale) AS revenue
FROM sales
GROUP BY age_group, category
ORDER BY age_group;

-- Transactions count by gender and category
SELECT gender,
category,
COUNT(transaction_id) AS total_transactions
FROM sales
GROUP BY gender, category
ORDER BY gender;