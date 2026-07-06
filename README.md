
# 🛒 Zepto Grocery Data Analysis using SQL Server

## 📌 Project Overview

This project analyzes the Zepto Grocery Products dataset using Microsoft SQL Server (MSSQL).

The objective is to demonstrate SQL skills including:

- Data Exploration
- Data Cleaning
- Business Analysis
- Aggregate Functions
- Window Functions
- SQL Best Practices

---

# Dataset

The dataset contains grocery product information including:

- Product Name
- Category
- MRP
- Discount
- Selling Price
- Available Quantity
- Weight
- Stock Status

---

# Database

Microsoft SQL Server

---

# Tools Used

- Microsoft SQL Server
- SQL Server Management Studio (SSMS)
- GitHub

---

# Project Structure

```
Zepto_SQL_Data_Analysis
│
├── Dataset
├── SQL Scripts
├── Images
├── Documentation
└── README.md
```

---

# SQL Concepts Used

- SELECT
- WHERE
- GROUP BY
- ORDER BY
- HAVING
- CASE
- Aggregate Functions
- Joins
- CTE
- Window Functions
- Data Cleaning
- String Functions

---

# Data Exploration

Examples include:

- Total Products
- Total Categories
- Product Count by Category
- Average Product Price
- Price Distribution
- Stock Availability

---

# Data Cleaning

Performed:

- Removed duplicate products
- Trimmed unwanted spaces
- Checked NULL values
- Identified invalid discounts
- Checked negative prices

---

# Business Insights

Examples:

- Top 10 Expensive Products
- Cheapest Products
- Highest Discount Products
- Category-wise Revenue
- Estimated Inventory Value
- Average Selling Price
- Out-of-Stock Products
- Product Savings Analysis

---

# Sample Queries

## Top 10 Expensive Products

```sql
SELECT TOP 10
name,
discountedSellingPrice
FROM Zepto
ORDER BY discountedSellingPrice DESC;
```

## Category Revenue

```sql
SELECT
Category,
SUM(discountedSellingPrice * availableQuantity) AS Revenue
FROM Zepto
GROUP BY Category
ORDER BY Revenue DESC;
```

---

# Key Insights

- Multiple grocery categories are available.
- Discounts vary significantly across categories.
- Inventory value is concentrated in a few categories.
- Some products have very high stock levels.
- Data cleaning improves data quality before analysis.

---

# Skills Demonstrated

- SQL Server
- Data Cleaning
- Data Exploration
- Business Analysis
- Aggregate Functions
- Window Functions
- Query Optimization

---

# Future Improvements

- Build Power BI Dashboard
- Create Stored Procedures
- Add Views
- Add Index Optimization
- Add KPI Dashboard

---

# Author

**B Krishnababu**

Data Analyst | Power BI Developer

LinkedIn:
https://www.linkedin.com/in/krishnapbi/

GitHub:
https://github.com/krishnababu-bapanapalle
