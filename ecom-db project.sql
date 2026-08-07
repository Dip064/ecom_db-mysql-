-- ECOMMERCE DATABASE PROJECT
DROP DATABASE IF EXISTS ecom_db;
CREATE DATABASE IF NOT EXISTS ecom_db;
USE ecom_db;

-- CUSTOMERS TABLE
CREATE TABLE customers (
    customer_id INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(100),
    last_name VARCHAR(100),
    gender VARCHAR(10),
    age INT,
    email VARCHAR(150) UNIQUE,
    phone VARCHAR(15),
    city VARCHAR(50),
    states VARCHAR(50),
    pincode VARCHAR(10),
    signup_date DATE,
    membership_status VARCHAR(20)
);

-- PRODUCTS TABLE
CREATE TABLE products (
    product_id INT PRIMARY KEY AUTO_INCREMENT,
    product_name VARCHAR(100),
    category VARCHAR(50),
    brand VARCHAR(50),
    cost_price DECIMAL(10,2),
    selling_price DECIMAL(10,2),
    discount_amount DECIMAL(10,2),
    supplier VARCHAR(100),
    stock INT,
    rating DECIMAL(2,1)
);

-- ORDERS TABLE
CREATE TABLE orders (
    order_id INT PRIMARY KEY AUTO_INCREMENT,
    customer_id INT,
    order_date DATE,
    shipping_date DATE,
    delivery_date DATE,
    order_status VARCHAR(30),
    shipping_cost DECIMAL(10,2),
    order_priority VARCHAR(20),
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
    ON DELETE CASCADE ON UPDATE CASCADE
);

-- ORDER ITEMS TABLE
CREATE TABLE order_items (
    order_item_id INT PRIMARY KEY AUTO_INCREMENT,
    order_id INT,
    product_id INT,
    quantity INT,
    FOREIGN KEY (order_id) REFERENCES orders(order_id)
    ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (product_id) REFERENCES products(product_id)
    ON DELETE CASCADE ON UPDATE CASCADE
);
-- PAYMENTS TABLE
CREATE TABLE payments (
    payment_id INT PRIMARY KEY AUTO_INCREMENT,
    order_id INT,
    payment_mode VARCHAR(30),
    amount DECIMAL(10,2),
    payment_date DATE,
    FOREIGN KEY (order_id) REFERENCES orders(order_id)
    ON DELETE CASCADE ON UPDATE CASCADE
);

-- INSERT INTO CUSTOMERS TABLE
INSERT INTO customers (first_name, last_name, gender, age, email, phone, city, states, pincode, signup_date, membership_status) VALUES
('Kuntal', 'Das', 'Male', 20, 'kuntal@gmail.com', '9875563210', 'Durgapur', 'West Bengal', '713201', '2025-01-01', 'Bronze'),
('Aman', 'Anand', 'Male', 18, 'aman@gmail.com', '9876206210', 'Patna', 'Bihar', '800001', '2025-01-01', 'Silver'),
('Praloy', 'Das', 'Male', 30, 'praloy@gmail.com', '9876763210', 'Sodepur', 'West Bengal', '713201', '2025-01-01', 'Gold'),
('Tahir', 'Hasan', 'Male', 30, 'tahir@gmail.com', '9746543210', 'Durgapur', 'West Bengal', '713201', '2025-01-01', 'Bronze'),
('Purbayan', 'Bhattacharya', 'Male', 30, 'purbayan@gmail.com', '9862543210', 'Sodepur', 'West Bengal', '713201', '2025-01-01', 'Silver'),
('Deep', 'Roy', 'Male', 20, 'deep@gmail.com', '9876543210', 'Durgapur', 'West Bengal', '713201', '2025-01-01', 'Bronze'),
('Amit', 'Sharma', 'Male', 25, 'amit@gmail.com', '9877893210', 'Delhi', 'Delhi', '110001', '2025-01-01', 'Gold'),
('Neha', 'Verma', 'Female', 28, 'neha@gmail.com', '9876543211', 'Mumbai', 'Maharashtra', '400001', '2025-01-02', 'Silver'),
('Rahul', 'Khan', 'Male', 30, 'rahul@gmail.com', '9876543212', 'Bangalore', 'Karnataka', '560001', '2025-01-03', 'Bronze'),
('Pooja', 'Nair', 'Female', 26, 'pooja@gmail.com', '9876323213', 'Chennai', 'Tamil Nadu', '600001', '2025-01-04', 'Gold'),
('Rohit', 'Gupta', 'Male', 32, 'rohit@gmail.com', '9876543214', 'Delhi', 'Delhi', '110001', '2025-01-05', 'Silver'),
('Ananya', 'Roy', 'Female', 27, 'ananya@gmail.com', '9423543215', 'Kolkata', 'West Bengal', '700001', '2025-01-06', 'Gold'),
('Karan', 'Mehta', 'Male', 29, 'karan@gmail.com', '9876543216', 'Ahmedabad', 'Gujarat', '380001', '2025-01-07', 'Silver'),
('Simran', 'Kaur', 'Female', 24, 'simran@gmail.com', '9825843217', 'Chandigarh', 'Chandigarh', '160001', '2025-01-08', 'Bronze'),
('Mohit', 'Jain', 'Male', 31, 'mohit@gmail.com', '9876543218', 'Jaipur', 'Rajasthan', '302001', '2025-01-09', 'Gold'),
('Sneha', 'Patel', 'Female', 25, 'sneha@gmail.com', '9873243219', 'Surat', 'Gujarat', '395001', '2025-01-10', 'Silver'),
('Vikram', 'Singh', 'Male', 33, 'vikram@gmail.com', '9876543220', 'Lucknow', 'Uttar Pradesh', '226001', '2025-01-11', 'Gold'),
('Alok', 'Mishra', 'Male', 28, 'alok@gmail.com', '9876543226', 'Indore', 'Madhya Pradesh', '452001', '2025-01-13', 'Silver'),
('Nidhi', 'Agarwal', 'Female', 26, 'nidhi@gmail.com', '9814543227', 'Pune', 'Maharashtra', '411001', '2025-01-14', 'Bronze'),
('Saurabh', 'Verma', 'Male', 29, 'saurabh@gmail.com', '9876543228', 'Noida', 'Uttar Pradesh', '201301', '2025-01-15', 'Silver'),
('Riya', 'Chopra', 'Female', 28, 'riya@gmail.com', '9876543221', 'Hyderabad', 'Telangana', '500001', '2025-01-12', 'Silver'),
('Aditya', 'Malhotra', 'Male', 35, 'aditya@gmail.com', '9632145789', 'Delhi', 'Delhi', '110001', '2025-01-16', 'Gold'),
('Kritika', 'Shah', 'Female', 27, 'kritika@gmail.com', '9876543222', 'Mumbai', 'Maharashtra', '400001', '2025-01-17', 'Silver'),
('Yash', 'Tiwari', 'Male', 30, 'yash@gmail.com', '9876543223', 'Kanpur', 'Uttar Pradesh', '226001', '2025-01-18', 'Gold'),
('Mehul', 'Joshi', 'Male', 31, 'mehul@gmail.com', '9876543224', 'Vadodara', 'Gujarat', '380001', '2025-01-19', 'Silver'),
('Isha', 'Kapoor', 'Female', 26, 'isha@gmail.com', '9876543225', 'Gurgaon', 'Haryana', '122001', '2025-01-20', 'Silver');


-- INSERT INTO PRODUCTS TABLE
INSERT INTO products (product_name, category, brand, cost_price, selling_price, discount_amount, stock, supplier, rating) VALUES
('Python Hoodie','Clothing','TechGear',1999,2797,0,100,'Supplier A',4.5),
('Java Hoodie','Clothing','TechGear',1899,2397,0,80,'Supplier A',3.3),
('Debugging Mug','Accessories','Mug Co',499,699,0,200,'Supplier B',4.0),
('Code Master T-Shirt','Clothing','TechGear',900,1999,0,150,'Supplier A',4.4),
('Algorithm Mug','Accessories','Mug Co',599,799,0,180,'Supplier B',3.2),
('Data Structures Poster','Stationery','Poster Inc',299,399,0,250,'Supplier C',3.1),
('DSA Notebook','Stationery','Notebook Inc',99,150,0,50,'Supplier B',3.0),
('SQL Cheat Sheet','Stationery','Notebook Inc',199,300,0,75,'Supplier B',4.2),
('Sticker Pack','Stationery','Sticker Inc',249,300,0,100,'Supplier C',2.1),
('Algorithm T-Shirt','Clothing','TechGear',499,600,0,60,'Supplier A',3.4),
('GitHub Cap','Accessories','Cap Co',599,700,0,70,'Supplier D',4.3),
('Keyboard Mat','Accessories','Mat Co',99,190,0,90,'Supplier E',2.5),
('Linux Hoodie','Clothing','TechGear',2099,3500,0,35,'Supplier A',4.6),
('AI Nerd T-Shirt','Clothing','TechGear',1599,5500,0,55,'Supplier A',4.2),
('Terminal Stickers','Stationery','Sticker Inc',199,250,0,250,'Supplier C',4.0),
('Coder Bottle','Accessories','Bottle Co',999,1110,0,110,'Supplier F',4.3),
('Late Night Hoodie','Clothing','TechGear',2199,3000,0,30,'Supplier A',4.5),
('DSA Flash Cards','Stationery','Card Co',349,680,0,180,'Supplier H',3.1);


-- INSERT INTO ORDERS TABLE
INSERT INTO orders (customer_id, order_date, shipping_date, delivery_date, order_status, shipping_cost, order_priority) VALUES
(1,'2025-02-01','2025-02-01','2025-02-02','Delivered',100,'High'),
(2,'2025-02-02','2025-02-02','2025-02-07','Delivered',150,'Medium'),
(3,'2025-02-03','2025-02-03','2025-02-14','Delivered',200,'Low'),
(4,'2025-02-04','2025-02-04','2025-02-14','Cancelled',0,'Low'),
(5,'2025-02-05','2025-02-05','2025-02-06','Delivered',120,'High'),
(6,'2025-02-06','2025-02-06','2025-02-11','Pending',150,'Medium'),
(7,'2025-02-07','2025-02-07','2025-02-17','Delivered',180,'Low'),
(8,'2025-02-08','2025-02-08','2025-02-13','Delivered',160,'Medium'),
(9,'2025-02-09','2025-02-09','2025-02-09','Delivered',140,'Low'),
(10,'2025-02-10','2025-02-10','2025-02-20','Cancelled',0,'Low'),
(11,'2025-02-11','2025-02-11','2025-02-12','Delivered',100,'High'),
(12,'2025-02-12','2025-02-12','2025-02-17','Delivered',150,'Medium'),
(13,'2025-02-13','2025-02-13','2025-02-17','Pending',150,'Medium'),
(14,'2025-02-14','2025-02-14','2025-02-17','Delivered',150,'Medium'),
(15,'2025-02-15','2025-02-15','2025-02-18','Delivered',150,'Medium'),
(16,'2025-02-16','2025-02-16','2025-02-18','Delivered',150,'Medium'),
(17,'2025-02-17','2025-02-17','2025-02-27','Cancelled',0,'Low'),
(18,'2025-02-18','2025-02-18','2025-02-25','Delivered',150,'Medium'),
(19,'2025-02-19','2025-02-19','2025-02-25','Delivered',150,'Medium'),
(20,'2025-02-20','2025-02-20','2025-02-25','Delivered',150,'Medium');

-- INSERT INTO ORDER ITEMS TABLE
INSERT INTO order_items (order_id, product_id, quantity) VALUES
(1,1,1),(1,7,2),
(2,3,1),(2,5,1),
(3,8,1),
(4,2,1),
(5,6,3),
(6,4,8),
(7,10,1),
(8,12,2),
(9,15,3),
(10,9,1),
(11,11,3),
(12,13,1),
(13,14,2),
(14,16,1),
(15,17,5),
(16,18,2),
(10,9,1),
(5,1,1),
(9,10,6),
(11,5,2),
(18,3,1),
(19,7,2),
(20,8,1);

-- INSERT INTO PAYMENTS TABLE
INSERT INTO payments (order_id, payment_mode, amount, payment_date) VALUES
(1, 'UPI', 2797, '2025-02-01'),
(2, 'Credit Card', 1498, '2025-02-02'),
(3, 'UPI', 300, '2025-02-03'),
(5, 'Debit Card', 3994, '2025-02-05'),
(7, 'UPI', 999, '2025-02-07'),
(8, 'Credit Card', 380, '2025-02-08'),
(9, 'UPI', 4350, '2025-02-09'),
(11, 'UPI', 3698, '2025-02-11'),
(12, 'Debit Card', 3500, '2025-02-12'),
(14, 'UPI', 899, '2025-02-14'),
(15, 'Credit Card', 15000, '2025-02-15'),
(16, 'UPI', 1360, '2025-02-16'),
(18, 'Debit Card', 699, '2025-02-18'),
(19, 'UPI', 300, '2025-02-19'),
(20, 'Credit Card', 300, '2025-02-20');

-- VIEW DATA
SELECT * FROM CUSTOMERS;
SELECT * FROM PRODUCTS;
SELECT * FROM ORDERS;
SELECT * FROM ORDER_ITEMS;  
SELECT * FROM PAYMENTS;

-- SALES DATA VIEW
CREATE VIEW sales_data AS
SELECT
o.order_id,
o.order_date,
o.order_status,
o.order_priority,
c.customer_id,
CONCAT(c.first_name,' ',c.last_name) AS customer_name,
c.gender,
c.city,
c.states,
c.age,
c.membership_status,
p.product_id,
p.product_name,
p.category,
p.brand,
o_item.quantity,
p.cost_price,
p.selling_price,
(o_item.quantity*p.selling_price) AS Sales,
(o_item.quantity*p.cost_price) AS Cost,
((o_item.quantity*p.selling_price)-
(o_item.quantity*p.cost_price)) AS Profit,
o.shipping_cost,
pay.payment_mode
FROM orders o
JOIN customers c
ON o.customer_id=c.customer_id
JOIN order_items o_item
ON o.order_id=o_item.order_id
JOIN products p
ON o_item.product_id=p.product_id
LEFT JOIN payments pay
ON o.order_id=pay.order_id;

-- KPIs (TOTAL SALES, TOTAL PROFIT, TOTAL ORDERS, TOTAL CUSTOMERS, AVERAGE ORDER VALUE)

SELECT
ROUND(SUM(Sales),2) AS Total_Sales
FROM sales_data;

SELECT
ROUND(SUM(Profit),2) AS Total_Profit
FROM sales_data;

SELECT COUNT(DISTINCT order_id)
FROM sales_data;

SELECT COUNT(DISTINCT customer_id)
FROM sales_data;

SELECT
ROUND(SUM(Sales)/COUNT(DISTINCT order_id),2)
AS Average_Order_Value
FROM sales_data;

-- CUSTOMER ANALYSIS (TOP 5 CUSTOMERS BY REVENUE, ORDER BY GENDER, CUSTOMER VALUE, MEMBERSHIP STATUS, CUSTOMER DISTRIBUTION BY STATE, ORDER BY AGE)

SELECT
customer_name,
SUM(Sales) AS Revenue
FROM sales_data
GROUP BY customer_name
ORDER BY Revenue DESC
LIMIT 5;

SELECT gender, COUNT(gender) AS Total
FROM sales_data 
GROUP BY gender;

SELECT
customer_name,
SUM(Sales) AS Lifetime_Value
FROM sales_data
GROUP BY customer_name
ORDER BY Lifetime_Value DESC;

SELECT
membership_status,
COUNT(*) Customers
FROM customers
GROUP BY membership_status;

SELECT
states,
COUNT(*) Customers
FROM customers
GROUP BY states
ORDER BY Customers DESC;

SELECT 
age, COUNT(customer_id) AS Age_group
FROM sales_data 
GROUP BY age;

-- PRODUCT ANALYSIS (BEST SELLING PRODUCTS, HIGHEST REVENUE PRODUCT, MOST PROFITABLE PRODUCT, CATEGORY-WISE REVENUE)

SELECT
product_name,
SUM(quantity) Units_Sold
FROM sales_data
GROUP BY product_name
ORDER BY Units_Sold DESC;

SELECT
product_name,
SUM(Sales) Revenue
FROM sales_data
GROUP BY product_name
ORDER BY Revenue DESC;

SELECT
product_name,
SUM(Profit) Profit
FROM sales_data
GROUP BY product_name
ORDER BY Profit DESC;

SELECT
category,
SUM(Sales) Revenue
FROM sales_data
GROUP BY category
ORDER BY Revenue DESC;

-- SALES ANALYSIS (MONTHLY SALES, REVENUE BY PAYMENT METHOD, REVENUE BY ORDER PRIORITY)

SELECT
DATE_FORMAT(order_date,'%b') Month,
SUM(Sales) Revenue
FROM sales_data
GROUP BY Month;

SELECT
payment_mode,
SUM(Sales)
FROM sales_data
WHERE payment_mode IS NOT NULL
GROUP BY payment_mode;

SELECT
order_priority,
SUM(Sales)
FROM sales_data
GROUP BY order_priority;

-- SHIPPING ANALYSIS (AVERAGE SHIPPING COST, HIGHEST SHIPPING COST, SHIPPING STATUS)

SELECT
AVG(shipping_cost)
FROM orders;

SELECT
MAX(shipping_cost)
FROM orders;

SELECT
order_status,
COUNT(*) Orders
FROM orders
GROUP BY order_status;

-- PROFIT ANALYSIS (PROFIT BY BRAND, PROFIT MARGIN)

SELECT
brand,
SUM(Profit)
FROM sales_data
GROUP BY brand
ORDER BY SUM(Profit) DESC;

SELECT
ROUND(
SUM(Profit)/SUM(Sales)*100,2)
AS Profit_Margin
FROM sales_data;

-- CUSTOMER SEGEMENTATION (CUSTOMER SEGMENTATION)

SELECT
customer_name,
SUM(Sales) Revenue,
CASE
WHEN SUM(Sales)>5000 THEN 'High Valuable Customer'
WHEN SUM(Sales)>2000 THEN 'Medium Valuable Customer'
ELSE 'Low Valuable Customer'
END Customer_Type
FROM sales_data
GROUP BY customer_name;

