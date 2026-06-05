# 🗄️ Task 2: SQL Sales Data Analysis

## Project Overview

This project focuses on using SQL to explore and analyze a sales dataset.

The goal was to extract meaningful insights by querying data, performing aggregations, and identifying business trends.

---

## Objectives

* Write SQL queries to retrieve data
* Filter records using conditions
* Group and summarize data
* Perform aggregations
* Generate business insights

---

## Tools Used

* PostgreSQL
* pgAdmin 4
* SQL

---

## Dataset Information

The dataset contains:

* 1,200 sales records
* Customer transactions
* Product information
* Revenue data
* Payment methods
* Order status details

---

## SQL Concepts Applied

### SELECT

Used to retrieve specific data from tables.

### WHERE

Used to filter records based on conditions.

### ORDER BY

Used to sort results.

### GROUP BY

Used to summarize data by category.

### Aggregate Functions

* COUNT()
* SUM()
* AVG()
* MIN()
* MAX()

---

## Sample Queries

### Total Orders

```sql
SELECT COUNT(*)
FROM sales_data;
```

### Total Revenue

```sql
SELECT SUM(total_price)
FROM sales_data;
```

### Average Order Value

```sql
SELECT AVG(total_price)
FROM sales_data;
```

### Revenue by Product

```sql
SELECT
    product,
    SUM(total_price) AS revenue
FROM sales_data
GROUP BY product
ORDER BY revenue DESC;
```

---

## Key Insights

### Product Performance

* Chairs and Printers generated the highest revenue.
* High-value products contributed significantly to overall sales.

### Customer Payment Preferences

* Online payment was the most frequently used payment method.

### Operational Performance

* Returned and Cancelled orders occurred frequently.
* Opportunities exist to improve customer experience and order fulfillment.

### Revenue Analysis

* Average order value was approximately 1,054.
* Several high-value transactions were identified as outliers.

---

## Skills Demonstrated

* SQL Query Writing
* Data Extraction
* Data Aggregation
* Business Analysis
* PostgreSQL
* Database Query Optimization

---

## Project Outcome

This project demonstrates practical SQL skills used to analyze business data, extract insights, and support data-driven decision-making.
