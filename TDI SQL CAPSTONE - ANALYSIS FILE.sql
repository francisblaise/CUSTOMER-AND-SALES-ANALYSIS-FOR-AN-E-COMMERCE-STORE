-- DATASET ANALYSIS 

-- GROUPING CUSTOMER BY GENERATION
SELECT 
CASE 
WHEN age BETWEEN 57 AND 80 THEN 'Boomers'
WHEN age BETWEEN 41 AND 56 THEN 'Gen X'
WHEN age BETWEEN 25 AND 40 THEN 'Millenial'
WHEN age BETWEEN 9 AND 24 THEN 'Gen Z'
WHEN age BETWEEN 0 AND 8 THEN 'Gen Alpha'
END AS customer_generation,
COUNT(DISTINCT c.customer_id) AS no_of_customers,
SUM(s.total_price) AS revenue
FROM customers c
JOIN orders o
ON c.customer_id = o.customer_id
JOIN sales s
ON o.order_id = s.order_id 
JOIN products p
ON s.product_id = p.product_id
GROUP BY 1
ORDER BY 2 DESC

-- AVG ORDER VALUE BY GENERATION
SELECT
CASE 
WHEN age BETWEEN 57 AND 80 THEN 'Boomers'
WHEN age BETWEEN 41 AND 56 THEN 'Gen X'
WHEN age BETWEEN 25 AND 40 THEN 'Millenial'
WHEN age BETWEEN 9 AND 24 THEN 'Gen Z'
WHEN age BETWEEN 0 AND 8 THEN 'Gen Alpha'
END AS customer_generation,
(SUM(s.total_price) / COUNT(DISTINCT o.order_id)) AS avg_order_value
FROM customers c
JOIN orders o
ON c.customer_id = o.customer_id
JOIN sales s
ON o.order_id = s.order_id 
JOIN products p
ON s.product_id = p.product_id
GROUP BY 1
ORDER BY 2 DESC

-- TOP 5 CUSTOMER BY REVENUE AND ORDERS
SELECT
c.customer_name,
SUM(s.total_price) AS revenue,
COUNT(DISTINCT o.order_id) AS orders
FROM customers c
JOIN orders o
ON c.customer_id = o.customer_id
JOIN sales s
ON o.order_id = s.order_id 
JOIN products p
ON s.product_id = p.product_id
GROUP BY 1
ORDER BY 2 DESC
LIMIT 5

-- TOTAL CUSTOMER BY COUNTRY
SELECT
country,
COUNT(customer_name) AS customer_count
FROM customers c
GROUP BY 1
ORDER BY 2

-- TOTAL CUSTOMER BY CITY
SELECT
city,
COUNT(customer_name) AS customer_count
FROM customers c
GROUP BY 1
ORDER BY 2 DESC

-- TOTAL CUSTOMER BY STATE
SELECT
state,
COUNT(customer_name) AS no_of_customers
FROM customers c
GROUP BY 1
ORDER BY 2 DESC

-- TOTAL REVENUE BY GENDER
SELECT
c.gender,
SUM(s.total_price) AS total_sales
FROM customers c
JOIN orders o
ON c.customer_id = o.customer_id
JOIN sales s
ON o.order_id = s.order_id 
GROUP BY 1
ORDER BY 2 DESC 

-- TOTAL REVENUE BY CITY
SELECT 
c.city,
SUM(s.total_price) AS total_revenue
FROM customers c
JOIN orders o
ON c.customer_id = o.customer_id
JOIN sales s
ON o.order_id = s.order_id 
JOIN products p
ON s.product_id = p.product_id
GROUP BY 1
ORDER BY 2 DESC

-- TOTAL REVENUE BY STATE
SELECT 
c.state,
SUM(s.total_price) AS total_revenue
FROM customers c
JOIN orders o
ON c.customer_id = o.customer_id
JOIN sales s
ON o.order_id = s.order_id 
JOIN products p
ON s.product_id = p.product_id
GROUP BY 1
ORDER BY 2 DESC

-- MONTHLY REVENUE TREND
SELECT
MONTH(o.order_date) AS month_number,
MONTHNAME(o.order_date) AS month_name,
SUM(s.total_price) AS revenue
FROM customers c
JOIN orders o
ON c.customer_id = o.customer_id
JOIN sales s
ON o.order_id = s.order_id 
JOIN products p
ON s.product_id = p.product_id
GROUP BY 1,2
ORDER BY 3 DESC

-- MONTH ON MONTH REVENUE 
WITH monthly_revenue AS
(SELECT
MONTH(o.order_date) AS month_number,
MONTHNAME(o.order_date) AS month_name,
SUM(s.total_price) AS revenue
FROM customers c
JOIN orders o
ON c.customer_id = o.customer_id
JOIN sales s
ON o.order_id = s.order_id 
JOIN products p
ON s.product_id = p.product_id
GROUP BY 1,2
ORDER BY 3 DESC)
SELECT
month_number,
month_name,
revenue AS current_month_revenue,
COALESCE(LAG(revenue) OVER (ORDER BY month_number), 0) AS previous_month_revenue
FROM monthly_revenue
ORDER BY 1

-- PERCENT GROWTH IN  MONTHLY REVENUE
WITH monthly_revenue AS
(SELECT
MONTH(o.order_date) AS month_number,
MONTHNAME(o.order_date) AS month_name,
SUM(s.total_price) AS revenue
FROM customers c
JOIN orders o
ON c.customer_id = o.customer_id
JOIN sales s
ON o.order_id = s.order_id 
JOIN products p
ON s.product_id = p.product_id
GROUP BY 1,2
ORDER BY 3 DESC)
SELECT
month_number,
month_name,
revenue AS current_month_revenue,
COALESCE(LAG(revenue) OVER (ORDER BY month_number), 0) AS previous_month_revenue,
ROUND( (revenue - LAG(revenue) OVER (ORDER BY month_number)) * 100.0/NULLIF(LAG(revenue) OVER (ORDER BY month_number),0),2) AS percent_growth
FROM monthly_revenue
ORDER BY 1

-- PRODUCT SALES BY GENDER
SELECT
c.gender,
p.product_type,
COUNT(DISTINCT s.sales_id) AS NO_of_sale
FROM customers c
JOIN orders o
ON c.customer_id = o.customer_id
JOIN sales s
ON o.order_id = s.order_id 
JOIN products p
ON s.product_id = p.product_id
GROUP BY 1,2
ORDER BY 1

-- TOP 10 SELLING PRODUCT
SELECT
p.product_name,
SUM(s.quantity) AS total_quantity_sold
FROM customers c
JOIN orders o
ON c.customer_id = o.customer_id
JOIN sales s
ON o.order_id = s.order_id 
JOIN products p
ON s.product_id = p.product_id
GROUP BY 1
ORDER BY 2 DESC
LIMIT 10

-- TOP 10 PRODUCTS BY REVENUE
SELECT
p.product_name,
SUM(s.total_price) AS total_revenue
FROM customers c
JOIN orders o
ON c.customer_id = o.customer_id
JOIN sales s
ON o.order_id = s.order_id 
JOIN products p
ON s.product_id = p.product_id
GROUP BY 1
ORDER BY 2 DESC
LIMIT 10

-- AVG DELIVERY TIME BY PRODUCT TYPE
SELECT
p.product_type,
AVG(DATEDIFF(o.delivery_date, o.order_date)) AS avg_delievery_days
FROM customers c
JOIN orders o
ON c.customer_id = o.customer_id
JOIN sales s
ON o.order_id = s.order_id 
JOIN products p
ON s.product_id = p.product_id
GROUP BY 1 

-- TOTAL REVENUE BY SIZE
SELECT 
CASE 
WHEN p.size = 'XS' THEN 'Extra Small'
WHEN p.size = 'S' THEN 'Small'
WHEN p.size = 'M' THEN 'Meduim'
WHEN p.size = 'L' THEN 'Large'
WHEN p.size = 'XL' THEN 'Extra Large'
ELSE 'Unknown'
END AS size_category,
SUM(s.total_price) AS total_revenue,
SUM(s.quantity) AS total_quantity
FROM customers c
JOIN orders o
ON c.customer_id = o.customer_id
JOIN sales s
ON o.order_id = s.order_id 
JOIN products p
ON s.product_id = p.product_id
GROUP BY 1
ORDER BY 2 DESC

-- TOTAL REVENUE BY COLOR
SELECT
p.colour,
SUM(s.total_price) AS revenue
FROM customers c
JOIN orders o
ON c.customer_id = o.customer_id
JOIN sales s
ON o.order_id = s.order_id 
JOIN products p
ON s.product_id = p.product_id
GROUP BY 1
ORDER BY 2 DESC

-- TOTAL REVENUE
SELECT
SUM(s.total_price) AS total_revenue
FROM customers c
JOIN orders o
ON c.customer_id = o.customer_id
JOIN sales s
ON o.order_id = s.order_id 
JOIN products p
ON s.product_id = p.product_id

-- TOTAL CUSTOMERS
SELECT
COUNT(DISTINCT customer_id) AS customer_count
FROM customers c

-- AVERAGE ORDER VALUE
SELECT
(SUM(s.total_price) / COUNT(DISTINCT o.order_id)) AS avg_order_value
FROM customers c
JOIN orders o
ON c.customer_id = o.customer_id
JOIN sales s
ON o.order_id = s.order_id 
JOIN products p
ON s.product_id = p.product_id

-- TOTAL ORDERS
SELECT
COUNT(*) AS total_order
FROM orders o

-- TOTAL PRODUCTS
SELECT
COUNT(DISTINCT product_id) AS unique_product
FROM products p

-- TOTAL ORDERS BY GENDER
SELECT
c.gender,
COUNT(DISTINCT o.order_id) AS orders
FROM customers c
JOIN orders o
ON c.customer_id = o.customer_id
JOIN sales s
ON o.order_id = s.order_id 
JOIN products p
ON s.product_id = p.product_id
GROUP BY 1
ORDER BY 2 DESC

-- TOTAL ORDER BY CUSTOMER GENERATION 
SELECT 
CASE 
WHEN age BETWEEN 57 AND 80 THEN 'Boomers'
WHEN age BETWEEN 41 AND 56 THEN 'Gen X'
WHEN age BETWEEN 25 AND 40 THEN 'Millenial'
WHEN age BETWEEN 9 AND 24 THEN 'Gen Z'
WHEN age BETWEEN 0 AND 8 THEN 'Gen Alpha'
END AS customer_generation,
COUNT(DISTINCT o.order_id) AS orders
FROM customers c
JOIN orders o
ON c.customer_id = o.customer_id
JOIN sales s
ON o.order_id = s.order_id 
JOIN products p
ON s.product_id = p.product_id
GROUP BY 1
ORDER BY 2 DESC










