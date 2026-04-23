CREATE DATABASE ecommerce_db;
USE ecommerce_db;

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