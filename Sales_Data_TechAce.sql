//Sales_data table created
CREATE TABLE sales_data (
    order_id VARCHAR(20),
    order_date DATE,
    customer_id VARCHAR(20),
    product VARCHAR(50),
    quantity INT,
    unit_price NUMERIC(10,2),
    shipping_address VARCHAR(255),
    payment_method VARCHAR(50),
    order_status VARCHAR(50),
    tracking_number VARCHAR(50),
    items_in_cart INT,
    coupon_code VARCHAR(50),
    referral_source VARCHAR(50),
    total_price NUMERIC(12,2)
);

//Data import check
SELECT * FROM sales_data

//Total of rows of sales_data counted
SELECT COUNT(*)
 FROM sales_data;

//The total number of Orders 
SELECT COUNT(*) AS total_orders
FROM sales_data;

//Total Revenue of the sales_data
SELECT SUM(total_price) AS total_revenue
FROM sales_data;

//Average order of the sales_data
SELECT AVG(total_price) AS avg_order_value
FROM sales_data;

//The Top product by Revenue
SELECT product, SUM(total_price) AS total_revenue
FROM sales_data
GROUP BY product
ORDER BY total_revenue DESC;

//To find the most used payment method
SELECT payment_method, COUNT(*) AS transactions
FROM sales_data
GROUP BY payment_method
ORDER BY transactions DESC;

//The order status distribution
SELECT order_status, COUNT(*) AS total_orders
FROM sales_data
GROUP BY order_status
ORDER BY total_orders DESC;

//To find the high value orders
SELECT order_id, product, total_price
FROM sales_data
WHERE total_price > 3000
ORDER BY total_price DESC;

//To calculate the revenue by product 
SELECT product, COUNT(*) AS total_sales, SUM(total_price) AS revenue, AVG(total_price) AS average_sale
FROM sales_data
GROUP BY product
ORDER BY revenue DESC;

//The orders paid online
SELECT *
FROM sales_data
WHERE payment_method = 'online';

//The products sold in large quantities
SELECT product, SUM(quantity) AS quantity_sold
FROM sales_data
GROUP BY product
ORDER BY quantity_sold DESC;

