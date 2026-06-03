# DecodeLabs Internship - SQL Sales Data Analysis

## Project Overview

This project demonstrates the use of SQL to extract business insights from a retail sales dataset.

The analysis focuses on:

* Data exploration
* Data filtering
* Aggregations
* Revenue analysis
* Customer behavior analysis
* Product performance analysis

## Dataset Information

The dataset contains 1,200 sales transactions with the following fields:

* OrderID
* Date
* CustomerID
* Product
* Quantity
* UnitPrice
* ShippingAddress
* PaymentMethod
* OrderStatus
* TrackingNumber
* ItemsInCart
* CouponCode
* ReferralSource
* TotalPrice

## Tools Used

* PostgreSQL
* pgAdmin 4
* SQL
* Git
* GitHub

## SQL Concepts Demonstrated

### SELECT

Used to retrieve data from the dataset.

### WHERE

Used to filter records based on specific conditions.

### GROUP BY

Used to summarize data by categories.

### ORDER BY

Used to sort query results.

### Aggregate Functions

* COUNT()
* SUM()
* AVG()
* MAX()
* MIN()

## Business Questions Answered

1. How many orders were processed?
2. What is the total revenue generated?
3. Which products generated the highest revenue?
4. Which payment methods are most popular?
5. What is the average order value?
6. Which order statuses occur most frequently?
7. Which transactions are considered high-value orders?

## Sample Queries

### Total Revenue

```sql
SELECT SUM(total_price) AS total_revenue
FROM sales_data;
```

### Top Revenue Products

```sql
SELECT
    product,
    SUM(total_price) AS revenue
FROM sales_data
GROUP BY product
ORDER BY revenue DESC;
```

### Payment Method Analysis

```sql
SELECT
    payment_method,
    COUNT(*) AS transactions
FROM sales_data
GROUP BY payment_method
ORDER BY transactions DESC;
```

## Key Insights

* Chairs and Printers generated the highest revenue.
* Online payments were the most preferred payment method.
* Several high-value transactions were identified.
* Returned and Cancelled orders were relatively high.
* Average order value was approximately 1,054.

## Project Outcomes

This project demonstrates practical SQL skills for:

* Data extraction
* Data aggregation
* Business intelligence
* Exploratory data analysis
* Decision support

## Author

Ayomide Idowu

Aspiring Data Analyst | SQL | Excel | Power BI | Python
