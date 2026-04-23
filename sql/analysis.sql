-- CREATE DATABASE
CREATE DATABASE ecommerce_db;

-- USE DATABASE
USE ecommerce_db;

-- CREATE TABLE
CREATE TABLE orders (
    customer_id INT,
    age INT,
    gender VARCHAR(10),
    item_purchased VARCHAR(100),
    category VARCHAR(50),
    purchase_amount DECIMAL(10,2),
    location VARCHAR(100),
    size VARCHAR(10),
    color VARCHAR(20),
    season VARCHAR(20),
    review_rating DECIMAL(3,2),
    subscription_status VARCHAR(10),
    payment_method VARCHAR(50),
    shipping_type VARCHAR(50),
    discount_applied VARCHAR(10),
    promo_code_used VARCHAR(10),
    previous_purchases INT,
    preferred_payment_method VARCHAR(50),
    frequency_of_purchases VARCHAR(20),
    order_date VARCHAR(50),
    year INT,
    month VARCHAR(10)
);
-- VIEW TABLE
SELECT COUNT(*) FROM orders;

-- VIEW FIRST 5 RECORD
SELECT * FROM orders LIMIT 5;

-- FIX DATE Eg. 21 January 2023
SELECT 
STR_TO_DATE(order_date, '%d %M %Y') AS formatted_date
FROM orders;

-- Total Revenue
SELECT SUM(purchase_amount) AS total_revenue
FROM orders; 

-- Revenue by Category
SELECT category, SUM(purchase_amount) AS revenue
FROM orders
GROUP BY category
ORDER BY revenue DESC; 

-- Top Locations
SELECT location, SUM(purchase_amount) AS total_sales
FROM orders
GROUP BY location
ORDER BY total_sales DESC
LIMIT 5;

-- Most Popular Products
SELECT item_purchased, COUNT(*) AS total_orders
FROM orders
GROUP BY item_purchased
ORDER BY total_orders DESC
LIMIT 10;

-- Payment Method Usage
SELECT payment_method, COUNT(*) AS usage_count
FROM orders
GROUP BY payment_method
ORDER BY usage_count DESC;

-- Shipping Analysis
SELECT shipping_type, COUNT(*) AS orders_count
FROM orders
GROUP BY shipping_type;

-- Discount Impact
SELECT discount_applied,
AVG(purchase_amount) AS avg_purchase
FROM orders
GROUP BY discount_applied;

-- Customer Segmentation
SELECT 
CASE 
    WHEN previous_purchases > 30 THEN 'High Value'
    WHEN previous_purchases > 15 THEN 'Medium Value'
    ELSE 'Low Value'
END AS customer_type,
COUNT(*) AS total_customers
FROM orders
GROUP BY customer_type;

-- Monthly Sales Trend
SELECT year, month,
SUM(purchase_amount) AS monthly_sales
FROM orders
GROUP BY year, month
ORDER BY year, month;

-- Ratings by Category
SELECT category,
AVG(review_rating) AS avg_rating
FROM orders
GROUP BY category
ORDER BY avg_rating DESC;

