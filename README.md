## 🛒 E-commerce SQL Analysis

## 📊 Problem Statement
E-commerce platforms generate large volumes of transactional data, but extracting meaningful insights from this data is a challenge. Businesses need to understand customer behavior, sales performance, and operational efficiency to make data-driven decisions.

## 🎯 Objective
To analyze customer purchasing patterns, sales trends, and business performance using SQL and derive actionable insights.

## 🛠 Tools & Technologies
MySQL
Microsoft Excel (Data Cleaning)
Dataset Description

## The dataset contains:
Customer information
Product details
Transaction records
Payment methods
Shipping details

## 📂 Project Structure
```
ecommerce-sql-analysis/
│
├── dataset/
│   ├── ecommerce_raw_data.csv
│   └── ecommerce_cleaned_data.csv
│
├── sql_queries/
│   ├── data_cleaning.sql
│   ├── exploratory_analysis.sql
│   ├── business_queries.sql
│   └── views.sql
│
├── images/
│   ├── total_records.png
│   ├── customer_segmentation.png
│   ├── date_conversion.png
│   ├── discount_impact.png
│   ├── monthly_sales_trend.png
│   ├── most_popular_product.png
│   ├── payment_method_analysis.png
│   ├── rating_analysis.png
│   ├── revenue_by_category.png
│   ├── shipping_analysis.png
│   ├── top_location_sales.png
│   ├── total_revenue.png
│   ├── table_view.png
│   ├── orders_view.png
│   └── sample_data.png
│
└── README.md
```

## 🔍 Key Analysis Performed
Revenue analysis by product category and location
Customer segmentation based on purchase behavior
Shipping and delivery performance analysis
Payment method usage trends
Monthly and seasonal sales trends

## 🧠 Sample SQL Queries

1. Revenue by Category
SELECT category, SUM(revenue) AS total_revenue
FROM sales
GROUP BY category
ORDER BY total_revenue DESC;
2. Top Locations by Sales
SELECT location, SUM(revenue) AS total_sales
FROM sales
GROUP BY location
ORDER BY total_sales DESC
LIMIT 5;
3. Monthly Sales Trend
SELECT MONTH(order_date) AS month, SUM(revenue) AS monthly_sales
FROM sales
GROUP BY month
ORDER BY month;

## 📈 Key Insights
The Clothing category generates the highest revenue
A small group of customers contributes significantly to total sales (high-value customers)
Discounts have a strong impact on purchasing decisions
Certain locations consistently dominate overall sales
Seasonal trends influence monthly sales performance

## 📸 Project Visualization
### 🔢 Total Records Count
Displays the total number of records in the dataset, ensuring data completeness before analysis.  
<img width="904" height="357" alt="count_total_record" src="https://github.com/user-attachments/assets/cc1a6d0b-a636-4852-9adf-383038a24253" />

---

### 👥 Customer Segmentation
Segments customers based on purchasing behavior to identify high-value and low-value groups.  
![Customer Segmentation](https://github.com/user-attachments/assets/94ebe450-8469-4ba3-8cc5-57db059379e0)

---

### 📅 Date Conversion
Demonstrates transformation of raw date data into a structured format for time-based analysis.  
![Date Conversion](https://github.com/user-attachments/assets/41a9a5b3-0343-45a7-9fe4-477c356e6e47)

---

### 🏷️ Discount Impact Analysis
Analyzes how discounts influence customer purchasing behavior and overall sales.  
![Discount Impact](https://github.com/user-attachments/assets/a34d5b85-0efd-4f98-a206-ca5f35e89052)

---

### 📊 Monthly Sales Trend
Shows variation in sales across months, helping identify seasonal patterns and demand fluctuations.  
![Monthly Sales](https://github.com/user-attachments/assets/dd92a07d-ea9d-4b7d-bbe2-4ace28c57790)

---

### ⭐ Most Popular Products
Identifies top-selling products based on frequency of purchases.  
![Popular Products](https://github.com/user-attachments/assets/50b47664-b365-4976-828a-7e594f641784)

---

### 💳 Payment Method Analysis
Displays customer preferences for different payment methods used during transactions.  
![Payment Analysis](https://github.com/user-attachments/assets/ea033a6e-7a59-4ebc-88c1-da7068967c5a)

---

### 🌟 Rating Analysis by Category
Evaluates customer satisfaction by analyzing product ratings across categories.  
![Ratings](https://github.com/user-attachments/assets/71874363-1569-4cf5-a49a-490c45403c87)

---

### 💰 Revenue by Category
Highlights which product categories generate the highest revenue.  
![Revenue](https://github.com/user-attachments/assets/9316f62f-a941-4232-8b48-ea5a1d9717e9)

---

### 📦 Shipping Performance Analysis
Analyzes delivery time and efficiency to identify potential delays in shipping.  
![Shipping](https://github.com/user-attachments/assets/46b24d38-9baf-4ec9-bc1a-135aaf046028)

---

### 🌍 Top Locations by Sales
Identifies geographic regions contributing the most to overall sales revenue.  
![Top Locations](https://github.com/user-attachments/assets/7a08d2f1-5969-4881-9eb8-26ff50e1cb95)

---

### 💵 Total Revenue
Displays the overall revenue generated from all transactions.  
![Total Revenue](https://github.com/user-attachments/assets/666c5aae-c373-4848-b012-0a45abd7eb24)

---

### 🧾 Data Overview (Table View)
Provides a complete view of the dataset structure and stored records.  
![Table View](https://github.com/user-attachments/assets/d1ca06e3-3414-44a9-bd00-39f9b59e64bd)

---

### 📑 Orders View
Displays structured order-level data for detailed transaction analysis.  
![Orders View](https://github.com/user-attachments/assets/d450e155-58aa-4b24-b120-3f92d7d8e3df)

---

### 🔍 Sample Data Preview
Shows a limited subset of data for quick inspection and validation.  
![Sample Data](https://github.com/user-attachments/assets/160d9fed-013c-45b5-b16f-0f623249af5e)

---

### Dashboard
<img width="1393" height="625" alt="Dashboard" src="https://github.com/user-attachments/assets/d834c141-15e7-4d37-900f-03b31942ac08" />

---

## 💡 Conclusion
This project demonstrates how SQL can be effectively used to analyze e-commerce data and generate actionable business insights.
The findings can help businesses:
Improve customer targeting
Optimize pricing and discount strategies
Enhance operational efficiency
Make data-driven decisions

## 🚀 Future Improvements
Build an interactive dashboard using Power BI or Tableau
Perform predictive analysis using Python
Implement advanced customer segmentation (RFM analysis)

## 📬 Contact
LinkedIn: https://www.linkedin.com/in/anushka-patil-140997376/

