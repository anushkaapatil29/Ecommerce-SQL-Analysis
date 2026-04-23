-- =====================================================
-- 📊 E-COMMERCE SQL ANALYSIS PROJECT
-- Description: This project analyzes customer purchasing
-- behavior, sales trends, and business insights.
-- =====================================================


-- =====================================================
-- 🗄️ CREATE DATABASE
-- Creates a new database to store e-commerce data
-- =====================================================
CREATE DATABASE ecommerce_db;


-- =====================================================
-- 📂 USE DATABASE
-- Select the database to perform operations
-- =====================================================
USE ecommerce_db;


-- =====================================================
-- 📋 CREATE TABLE
-- This table stores customer transactions and product data
-- =====================================================
CREATE TABLE orders (
    customer_id INT,                         -- Unique ID for each customer
    age INT,                                 -- Customer age
    gender VARCHAR(10),                      -- Gender of customer
    item_purchased VARCHAR(100),             -- Product purchased
    category VARCHAR(50),                    -- Product category (Clothing, Footwear, etc.)
    purchase_amount DECIMAL(10,2),           -- Purchase value in USD
    location VARCHAR(100),                   -- Customer location
    size VARCHAR(10),                        -- Product size
    color VARCHAR(20),                       -- Product color
    season VARCHAR(20),                      -- Season of purchase
    review_rating DECIMAL(3,2),              -- Customer rating (1–5)
    subscription_status VARCHAR(10),         -- Whether customer is subscribed
    payment_method VARCHAR(50),              -- Payment method used
    shipping_type VARCHAR(50),               -- Shipping method selected
    discount_applied VARCHAR(10),            -- Whether discount was applied
    promo_code_used VARCHAR(10),             -- Whether promo code was used
    previous_purchases INT,                  -- Number of previous purchases
    preferred_payment_method VARCHAR(50),    -- Customer's preferred payment method
    frequency_of_purchases VARCHAR(20),      -- Purchase frequency (Weekly, Monthly, etc.)
    order_date VARCHAR(50),                  -- Order date (stored as text)
    year INT,                                -- Year of purchase
    month VARCHAR(10)                        -- Month of purchase
);


-- =====================================================
-- 🔍 VIEW FULL TABLE
-- Displays all records from the orders table
-- =====================================================
SELECT * FROM orders;


-- =====================================================
-- 🔢 COUNT TOTAL RECORDS
-- Returns total number of rows in the dataset
-- =====================================================
SELECT COUNT(*) AS total_records FROM orders;


-- =====================================================
-- 👀 VIEW SAMPLE DATA
-- Displays first 5 rows for quick inspection
-- =====================================================
SELECT * FROM orders LIMIT 5;


-- =====================================================
-- 📅 DATE CONVERSION
-- Converts text date into proper SQL date format
-- =====================================================
SELECT 
    STR_TO_DATE(order_date, '%d %M %Y') AS formatted_date
FROM orders;


-- =====================================================
-- 💰 TOTAL REVENUE
-- Calculates total sales across all transactions
-- =====================================================
SELECT 
    SUM(purchase_amount) AS total_revenue
FROM orders; 


-- =====================================================
-- 📦 REVENUE BY CATEGORY
-- Shows which product categories generate the most revenue
-- =====================================================
SELECT 
    category, 
    SUM(purchase_amount) AS revenue
FROM orders
GROUP BY category
ORDER BY revenue DESC; 


-- =====================================================
-- TOP LOCATIONS BY SALES
-- Identifies top 5 locations with highest sales
-- =====================================================
SELECT 
    location, 
    SUM(purchase_amount) AS total_sales
FROM orders
GROUP BY location
ORDER BY total_sales DESC
LIMIT 5;


-- =====================================================
-- 🛍️ MOST POPULAR PRODUCTS
-- Finds top 10 most frequently purchased items
-- =====================================================
SELECT 
    item_purchased, 
    COUNT(*) AS total_orders
FROM orders
GROUP BY item_purchased
ORDER BY total_orders DESC
LIMIT 10;


-- =====================================================
-- 💳 PAYMENT METHOD ANALYSIS
-- Shows most commonly used payment methods
-- =====================================================
SELECT 
    payment_method, 
    COUNT(*) AS usage_count
FROM orders
GROUP BY payment_method
ORDER BY usage_count DESC;


-- =====================================================
-- 🚚 SHIPPING ANALYSIS
-- Counts number of orders by shipping type
-- =====================================================
SELECT 
    shipping_type, 
    COUNT(*) AS orders_count
FROM orders
GROUP BY shipping_type;


-- =====================================================
-- 🎯 DISCOUNT IMPACT
-- Analyzes how discounts affect average purchase value
-- =====================================================
SELECT 
    discount_applied,
    AVG(purchase_amount) AS avg_purchase
FROM orders
GROUP BY discount_applied;


-- =====================================================
-- 🔁 CUSTOMER SEGMENTATION
-- Classifies customers based on purchase history
-- =====================================================
SELECT 
    CASE 
        WHEN previous_purchases > 30 THEN 'High Value'
        WHEN previous_purchases > 15 THEN 'Medium Value'
        ELSE 'Low Value'
    END AS customer_type,
    COUNT(*) AS total_customers
FROM orders
GROUP BY customer_type;


-- =====================================================
-- 📅 MONTHLY SALES TREND
-- Shows sales performance over time (year & month)
-- =====================================================
SELECT 
    year, 
    month,
    SUM(purchase_amount) AS monthly_sales
FROM orders
GROUP BY year, month
ORDER BY year, month;


-- =====================================================
-- ⭐ RATING ANALYSIS BY CATEGORY
-- Finds average customer ratings for each category
-- =====================================================
SELECT 
    category,
    AVG(review_rating) AS avg_rating
FROM orders
GROUP BY category
ORDER BY avg_rating DESC;