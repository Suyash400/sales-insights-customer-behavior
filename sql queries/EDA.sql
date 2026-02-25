-- total records
SELECT COUNT(*) FROM sales;

-- column preview
SELECT * FROM sales LIMIT 10;

-- unique categories
SELECT DISTINCT category FROM sales;

-- date range
SELECT MIN(sale_date), MAX(sale_date)
FROM sales;

-- Gender Disttibution 
SELECT gender,
COUNT(*) AS total_orders FROM sales
GROUP BY gender;

-- Age classification 
SELECT MIN(age) AS min_age, MAX(age) AS max_age, AVG(age) AS avg_age
FROM sales;

-- Checking Missing Values
SELECT COUNT(*) 
FROM sales
WHERE age IS NULL
   OR quantity IS NULL
   OR total_sale IS NULL;
   
-- negative values check
SELECT * FROM sales
WHERE total_sale < 0;


