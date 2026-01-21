


https://chatgpt.com/share/6970556f-c0e4-8012-b8ea-ab7abb98f43c


SQL Interview Practice Database (HackerRank-Style)
📌 Overview

This project recreates HackerRank-style SQL interview datasets and questions using Microsoft SQL Server.
It is designed to help candidates practice real SQL interview problems covering joins, aggregations, subqueries, and window functions using realistic relational data.

The datasets were programmatically generated using Python and imported into SQL Server as CSV files.

🎯 Objectives

Simulate real SQL interview environments (HackerRank / technical screens)

Practice JOIN-heavy SQL problems

Use Microsoft SQL Server (T-SQL) syntax

Build a portfolio-ready SQL project

🧱 Database Schema

The project consists of the following tables:

Table Name	Description
students	Student records and marks
employees	Employee salary and department data
departments	Department reference table
customers	Customer demographic data
orders	Customer orders
order_items	Items within each order
products	Product catalog with prices
🔗 Table Relationships
departments.department_id → employees.department_id
customers.customer_id     → orders.customer_id
orders.order_id           → order_items.order_id
products.product_id       → order_items.product_id


These relationships enable multi-table JOIN scenarios, exactly like real interview problems.

🛠️ Tools & Technologies Used

Microsoft SQL Server

T-SQL

Python

pandas

faker

CSV Import

SQL Server Management Studio (SSMS)

📂 Project Structure
sql-interview-practice/
│
├── datasets/
│   ├── students.csv
│   ├── employees.csv
│   ├── departments.csv
│   ├── customers.csv
│   ├── orders.csv
│   ├── order_items.csv
│   └── products.csv
│
├── sql/
│   ├── joins.sql
│   ├── aggregations.sql
│   ├── subqueries.sql
│   └── window_functions.sql
│
├── python/
│   └── generate_datasets.py
│
└── README.md

🧠 SQL Concepts Practiced
✅ Core SQL

SELECT / WHERE / ORDER BY

DISTINCT

COUNT, SUM, AVG

GROUP BY / HAVING

🔗 JOINs (Primary Focus)

INNER JOIN

LEFT JOIN

FULL OUTER JOIN

Multi-table JOINs (4+ tables)

🔍 Advanced SQL

Subqueries

Correlated subqueries

CASE WHEN

Window functions:

ROW_NUMBER()

DENSE_RANK()

AVG() OVER()

Running totals

🧪 Sample Interview Questions
Example 1: Employees with Department Names
SELECT e.employee_id,
       e.employee_name,
       d.department_name
FROM employees e
JOIN departments d
    ON e.department_id = d.department_id;

Example 2: Customers Who Never Placed Orders
SELECT c.customer_id,
       c.customer_name
FROM customers c
LEFT JOIN orders o
    ON c.customer_id = o.customer_id
WHERE o.order_id IS NULL;

Example 3: Total Amount Spent Per Customer
SELECT c.customer_name,
       SUM(oi.quantity * p.price) AS total_spent
FROM customers c
JOIN orders o
    ON c.customer_id = o.customer_id
JOIN order_items oi
    ON o.order_id = oi.order_id
JOIN products p
    ON oi.product_id = p.product_id
GROUP BY c.customer_name
ORDER BY total_spent DESC;

🧪 Difficulty Levels (HackerRank-Style)
Level	Description
Easy	Basic SELECTs and simple JOINs
Medium	JOINs + GROUP BY
Hard	Subqueries, window functions
Advanced	Multi-table joins with ranking
🚀 How to Use This Project

Clone the repository

Import CSV files into SQL Server

Run queries from the /sql folder

Practice solving questions without viewing solutions

Compare results with expected output

📈 Why This Project Matters

This project demonstrates:

Strong understanding of relational databases

Ability to solve real interview SQL problems

Comfort with Microsoft SQL Server

Clean, structured SQL writing

Analytical thinking

It is suitable for:

Data Analyst interviews

Business Intelligence roles

Finance / Operations analytics

Entry-level to mid-level SQL assessments

🔮 Future Enhancements

Add timed mock tests

Create Flask SQL practice UI

Add Power BI dashboards

Introduce indexing & query optimization

Convert into a mini HackerRank clone

👤 Author

John Kipkemboi Kimaiyo

📧 Email: kimaiyojohn6@gmail.com

🌐 Portfolio: https://johnkimaiyo-rosy.vercel.app

If you want, next I can:

Tailor this README for Data Analyst roles

Add expected outputs (HackerRank style)

Create SQL scripts folder content

Help you publish this as a standout GitHub project

Just tell me 🚀
