#  E-Commerce Sales Analysis using MySQL
A complete SQL-based Data Analytics project that simulates an E-Commerce business database. This project demonstrates database design, SQL querying, business KPI calculation, customer segmentation, and sales analysis using MySQL.

---

##  Project Overview
The goal of this project is to analyze sales performance and customer behavior from an E-Commerce database using SQL.
The project covers:
- Database Design
- Data Modeling
- SQL Views
- Business KPI Calculation
- Customer Analysis
- Product Analysis
- Sales Analysis
- Profit Analysis
- Shipping Analysis
- Customer Segmentation

---

##  Tech Stack
- MySQL
- MySQL Workbench

---

##  Database Schema
The project consists of five relational tables.
|    Table    |             Description         |
|-------------|---------------------------------|
|  Customers  |      Customer information       |
|   Products  |         Product catalog         |
|    Orders   |           Order details         |
| Order_Items | Products included in each order |
|   Payments  |       Payment information       |

### Relationships
Customers (1) ────< Orders
Orders (1) ────< Order_Items >──── (1) Products
Orders (1) ────< Payments

---

##  Database Features
- Relational Database Design
- Primary Keys
- Foreign Keys
- AUTO_INCREMENT
- Data Integrity
- SQL View
- Multi-table Joins

---

##  SQL Concepts Used
- CREATE DATABASE
- CREATE TABLE
- INSERT INTO
- INNER JOIN
- LEFT JOIN
- VIEW
- Aggregate Functions
- GROUP BY
- ORDER BY
- CASE Statement
- CONCAT()
- DATE_FORMAT()
- Mathematical Calculations
- Business KPI Queries

---

#  Business KPIs
The project calculates important business metrics including:
- Total Sales
- Total Profit
- Total Orders
- Total Customers
- Average Order Value (AOV)
- Profit Margin

---

#  Customer Analysis
- Top 5 Customers by Revenue
- Customer Lifetime Value
- Gender Distribution
- Membership-wise Customer Distribution
- State-wise Customer Distribution
- Age Analysis
- Customer Segmentation using CASE Statement

---

#  Product Analysis
- Best Selling Products
- Highest Revenue Products
- Most Profitable Products
- Category-wise Revenue
- Brand-wise Profit

---

#  Sales Analysis
- Monthly Sales Trend
- Revenue by Payment Method
- Revenue by Order Priority

---

#  Shipping Analysis
- Average Shipping Cost
- Highest Shipping Cost
- Order Status Analysis

---

#  Profit Analysis
- Brand-wise Profit
- Overall Profit Margin

---

#  Customer Segmentation
Customers are classified into three categories based on total revenue generated:
- High Valuable Customer
- Medium Valuable Customer
- Low Valuable Customer

---

#  Key Business Questions Answered
- What is the total sales revenue?
- Which customers contribute the most revenue?
- Which products generate the highest sales?
- Which products generate the highest profit?
- Which category performs the best?
- Which payment method is most commonly used?
- Which states have the highest number of customers?
- What is the company's profit margin?
- What is the average order value?
- How are customers distributed by membership level?
- Which orders are Delivered, Pending, or Cancelled?

---

#  Skills Demonstrated
- SQL
- Relational Database Design
- Data Modeling
- Business Analysis
- Data Aggregation
- Data Cleaning
- KPI Reporting
- SQL Views
- Joins
- CASE Statements
- Customer Analytics
- Sales Analytics

---

#  Sample Output
You can include screenshots such as:
- Database Schema
- Customer Table
- Sales View
- KPI Results
- Customer Analysis
- Product Analysis
- Sales Analysis

---

#  Future Improvements
- Add Window Functions
- Use Common Table Expressions (CTEs)
- Create Stored Procedures
- Add Indexing for Performance
- Connect MySQL to Power BI
- Build an Interactive Dashboard
- Expand the dataset with thousands of records

---
