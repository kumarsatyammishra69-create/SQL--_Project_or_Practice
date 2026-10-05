-- ============================================
-- SQL PRACTICE DATABASE
-- E-COMMERCE SALES DATABASE
-- ============================================

CREATE DATABASE IF NOT EXISTS ecommerce_practice;
USE ecommerce_practice;

-- ============================================
-- 1. CUSTOMERS
-- ============================================

DROP TABLE IF EXISTS shipping;
DROP TABLE IF EXISTS payments;
DROP TABLE IF EXISTS order_items;
DROP TABLE IF EXISTS orders;
DROP TABLE IF EXISTS products;
DROP TABLE IF EXISTS categories;
DROP TABLE IF EXISTS customers;

CREATE TABLE customers (
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(100),
    city VARCHAR(50),
    state VARCHAR(50),
    signup_date DATE
);

INSERT INTO customers VALUES
(1, 'Aman Sharma', 'Delhi', 'Delhi', '2024-01-15'),
(2, 'Riya Singh', 'Mumbai', 'Maharashtra', '2024-02-20'),
(3, 'Rahul Verma', 'Bhopal', 'Madhya Pradesh', '2024-03-10'),
(4, 'Priya Gupta', 'Indore', 'Madhya Pradesh', '2024-03-25'),
(5, 'Satyam Mishra', 'Patna', 'Bihar', '2024-04-05'),
(6, 'Neha Jain', 'Jaipur', 'Rajasthan', '2024-04-18'),
(7, 'Arjun Patel', 'Ahmedabad', 'Gujarat', '2024-05-11'),
(8, 'Sneha Das', 'Kolkata', 'West Bengal', '2024-05-29'),
(9, 'Vikas Kumar', 'Lucknow', 'Uttar Pradesh', '2024-06-12'),
(10, 'Anjali Mehta', 'Pune', 'Maharashtra', '2024-07-01'),
(11, 'Rohit Yadav', 'Delhi', 'Delhi', '2024-07-15'),
(12, 'Kavya Rao', 'Bangalore', 'Karnataka', '2024-08-03'),
(13, 'Nikhil Shah', 'Surat', 'Gujarat', '2024-08-21'),
(14, 'Pooja Singh', 'Patna', 'Bihar', '2024-09-10'),
(15, 'Karan Malhotra', 'Chandigarh', 'Chandigarh', '2024-10-05'),
(16, 'Megha Joshi', 'Nagpur', 'Maharashtra', '2024-10-19'),
(17, 'Aditya Kumar', 'Ranchi', 'Jharkhand', '2024-11-02'),
(18, 'Simran Kaur', 'Amritsar', 'Punjab', '2024-11-15'),
(19, 'Deepak Verma', 'Bhopal', 'Madhya Pradesh', '2025-01-10'),
(20, 'Shreya Roy', 'Kolkata', 'West Bengal', '2025-02-14');

-- ============================================
-- 2. CATEGORIES
-- ============================================

CREATE TABLE categories (
    category_id INT PRIMARY KEY,
    category_name VARCHAR(50)
);

INSERT INTO categories VALUES
(1, 'Electronics'),
(2, 'Clothing'),
(3, 'Books'),
(4, 'Home & Kitchen'),
(5, 'Sports');

-- ============================================
-- 3. PRODUCTS
-- ============================================

CREATE TABLE products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(100),
    category_id INT,
    price DECIMAL(10,2),
    stock INT,
    FOREIGN KEY (category_id) REFERENCES categories(category_id)
);

INSERT INTO products VALUES
(1, 'Laptop', 1, 65000, 20),
(2, 'Smartphone', 1, 30000, 35),
(3, 'Headphones', 1, 2500, 80),
(4, 'Smart Watch', 1, 5000, 45),
(5, 'Keyboard', 1, 1800, 60),

(6, 'T-Shirt', 2, 800, 100),
(7, 'Jeans', 2, 1800, 70),
(8, 'Jacket', 2, 3500, 40),
(9, 'Sneakers', 2, 4000, 50),
(10, 'Hoodie', 2, 2200, 55),

(11, 'SQL Book', 3, 700, 90),
(12, 'Python Book', 3, 900, 75),
(13, 'Data Science Book', 3, 1200, 60),
(14, 'DSA Book', 3, 1000, 80),
(15, 'AI Book', 3, 1500, 50),

(16, 'Mixer Grinder', 4, 4500, 30),
(17, 'Electric Kettle', 4, 1800, 45),
(18, 'Air Fryer', 4, 6500, 25),
(19, 'Coffee Maker', 4, 5500, 20),
(20, 'Cookware Set', 4, 3000, 35),

(21, 'Cricket Bat', 5, 3500, 30),
(22, 'Football', 5, 1200, 50),
(23, 'Badminton Racket', 5, 2200, 40),
(24, 'Tennis Ball', 5, 500, 100),
(25, 'Gym Dumbbells', 5, 3000, 25);

-- ============================================
-- 4. ORDERS
-- ============================================

CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    order_date DATE,
    status VARCHAR(20),
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);

INSERT INTO orders VALUES
(101, 1, '2025-01-05', 'Delivered'),
(102, 2, '2025-01-10', 'Delivered'),
(103, 3, '2025-01-15', 'Delivered'),
(104, 4, '2025-01-20', 'Cancelled'),
(105, 5, '2025-02-02', 'Delivered'),
(106, 6, '2025-02-10', 'Delivered'),
(107, 7, '2025-02-15', 'Shipped'),
(108, 8, '2025-02-22', 'Delivered'),
(109, 9, '2025-03-01', 'Delivered'),
(110, 10, '2025-03-05', 'Delivered'),
(111, 1, '2025-03-10', 'Delivered'),
(112, 2, '2025-03-18', 'Cancelled'),
(113, 3, '2025-04-01', 'Delivered'),
(114, 5, '2025-04-08', 'Shipped'),
(115, 6, '2025-04-15', 'Delivered'),
(116, 7, '2025-05-01', 'Delivered'),
(117, 8, '2025-05-10', 'Delivered'),
(118, 9, '2025-05-20', 'Delivered'),
(119, 10, '2025-06-01', 'Delivered'),
(120, 11, '2025-06-10', 'Cancelled'),
(121, 12, '2025-06-15', 'Delivered'),
(122, 13, '2025-07-01', 'Delivered'),
(123, 14, '2025-07-10', 'Shipped'),
(124, 15, '2025-07-20', 'Delivered'),
(125, 16, '2025-08-01', 'Delivered'),
(126, 17, '2025-08-10', 'Delivered'),
(127, 18, '2025-08-20', 'Cancelled'),
(128, 19, '2025-09-01', 'Delivered'),
(129, 20, '2025-09-10', 'Delivered'),
(130, 1, '2025-09-20', 'Delivered'),
(131, 2, '2025-10-01', 'Delivered'),
(132, 5, '2025-10-10', 'Delivered'),
(133, 9, '2025-10-15', 'Shipped'),
(134, 12, '2025-10-20', 'Delivered'),
(135, 15, '2025-11-01', 'Delivered'),
(136, 20, '2025-11-10', 'Delivered');

-- ============================================
-- 5. ORDER ITEMS
-- ============================================

CREATE TABLE order_items (
    order_id INT,
    product_id INT,
    quantity INT,
    PRIMARY KEY (order_id, product_id),
    FOREIGN KEY (order_id) REFERENCES orders(order_id),
    FOREIGN KEY (product_id) REFERENCES products(product_id)
);

INSERT INTO order_items VALUES
(101, 1, 1),
(101, 3, 2),

(102, 2, 1),
(102, 6, 2),

(103, 11, 2),
(103, 14, 1),

(104, 16, 1),

(105, 4, 1),
(105, 7, 2),

(106, 9, 1),
(106, 10, 1),

(107, 12, 2),
(107, 15, 1),

(108, 17, 2),
(108, 20, 1),

(109, 5, 2),
(109, 3, 1),

(110, 18, 1),
(110, 19, 1),

(111, 2, 1),
(111, 4, 1),

(112, 8, 1),

(113, 13, 2),
(113, 11, 1),

(114, 21, 1),
(114, 22, 2),

(115, 23, 1),
(115, 24, 3),

(116, 1, 1),
(116, 5, 1),

(117, 6, 3),
(117, 10, 1),

(118, 7, 2),
(118, 9, 1),

(119, 16, 1),
(119, 17, 1),

(120, 25, 1),

(121, 3, 2),
(121, 4, 1),

(122, 15, 2),
(122, 13, 1),

(123, 20, 1),
(123, 18, 1),

(124, 21, 1),
(124, 23, 1),

(125, 2, 1),
(125, 3, 1),

(126, 8, 2),
(126, 6, 2),

(127, 22, 1),

(128, 11, 3),
(128, 14, 2),

(129, 19, 1),
(129, 17, 2),

(130, 1, 1),
(130, 2, 1),

(131, 9, 2),
(131, 10, 1),

(132, 12, 1),
(132, 15, 2),

(133, 24, 4),
(133, 23, 1),

(134, 16, 1),
(134, 20, 1),

(135, 4, 1),
(135, 5, 2),

(136, 13, 1),
(136, 15, 1);

-- ============================================
-- 6. PAYMENTS
-- ============================================

CREATE TABLE payments (
    payment_id INT PRIMARY KEY,
    order_id INT,
    payment_date DATE,
    amount DECIMAL(10,2),
    payment_method VARCHAR(30),
    FOREIGN KEY (order_id) REFERENCES orders(order_id)
);

INSERT INTO payments VALUES
(1,101,'2025-01-05',70000,'UPI'),
(2,102,'2025-01-10',31600,'Credit Card'),
(3,103,'2025-01-15',2400,'UPI'),
(4,104,'2025-01-20',4500,'Debit Card'),
(5,105,'2025-02-02',8600,'UPI'),
(6,106,'2025-02-10',6200,'Credit Card'),
(7,107,'2025-02-15',3300,'UPI'),
(8,108,'2025-02-22',6600,'Cash'),
(9,109,'2025-03-01',6100,'UPI'),
(10,110,'2025-03-05',12000,'Credit Card'),
(11,111,'2025-03-10',35000,'UPI'),
(12,112,'2025-03-18',3500,'UPI'),
(13,113,'2025-04-01',3100,'Debit Card'),
(14,114,'2025-04-08',5900,'UPI'),
(15,115,'2025-04-15',3700,'Credit Card'),
(16,116,'2025-05-01',66800,'UPI'),
(17,117,'2025-05-10',4600,'Cash'),
(18,118,'2025-05-20',7600,'UPI'),
(19,119,'2025-06-01',10000,'Credit Card'),
(20,120,'2025-06-10',3000,'UPI'),
(21,121,'2025-06-15',10000,'UPI'),
(22,122,'2025-07-01',3900,'Credit Card'),
(23,123,'2025-07-10',11000,'UPI'),
(24,124,'2025-07-20',5700,'Debit Card'),
(25,125,'2025-08-01',32500,'Credit Card'),
(26,126,'2025-08-10',6200,'UPI'),
(27,127,'2025-08-20',1200,'UPI'),
(28,128,'2025-09-01',4100,'Cash'),
(29,129,'2025-09-10',9100,'UPI'),
(30,130,'2025-09-20',95000,'Credit Card'),
(31,131,'2025-10-01',5800,'UPI'),
(32,132,'2025-10-10',3900,'UPI'),
(33,133,'2025-10-15',4200,'Debit Card'),
(34,134,'2025-10-20',7500,'Credit Card'),
(35,135,'2025-11-01',8600,'UPI'),
(36,136,'2025-11-10',2700,'UPI');

-- ============================================
-- 7. SHIPPING
-- ============================================

CREATE TABLE shipping (
    shipping_id INT PRIMARY KEY,
    order_id INT,
    shipping_date DATE,
    delivery_date DATE,
    shipping_status VARCHAR(30),
    FOREIGN KEY (order_id) REFERENCES orders(order_id)
);

INSERT INTO shipping VALUES
(1,101,'2025-01-06','2025-01-09','Delivered'),
(2,102,'2025-01-11','2025-01-15','Delivered'),
(3,103,'2025-01-16','2025-01-20','Delivered'),
(4,104,NULL,NULL,'Cancelled'),
(5,105,'2025-02-03','2025-02-07','Delivered'),
(6,106,'2025-02-11','2025-02-15','Delivered'),
(7,107,'2025-02-16',NULL,'In Transit'),
(8,108,'2025-02-23','2025-02-27','Delivered'),
(9,109,'2025-03-02','2025-03-06','Delivered'),
(10,110,'2025-03-06','2025-03-10','Delivered'),
(11,111,'2025-03-11','2025-03-15','Delivered'),
(12,112,NULL,NULL,'Cancelled'),
(13,113,'2025-04-02','2025-04-06','Delivered'),
(14,114,'2025-04-09',NULL,'In Transit'),
(15,115,'2025-04-16','2025-04-20','Delivered'),
(16,116,'2025-05-02','2025-05-06','Delivered'),
(17,117,'2025-05-11','2025-05-15','Delivered'),
(18,118,'2025-05-21','2025-05-25','Delivered'),
(19,119,'2025-06-02','2025-06-06','Delivered'),
(20,120,NULL,NULL,'Cancelled'),
(21,121,'2025-06-16','2025-06-20','Delivered'),
(22,122,'2025-07-02','2025-07-06','Delivered'),
(23,123,'2025-07-11',NULL,'In Transit'),
(24,124,'2025-07-21','2025-07-25','Delivered'),
(25,125,'2025-08-02','2025-08-06','Delivered'),
(26,126,'2025-08-11','2025-08-15','Delivered'),
(27,127,NULL,NULL,'Cancelled'),
(28,128,'2025-09-02','2025-09-06','Delivered'),
(29,129,'2025-09-11','2025-09-15','Delivered'),
(30,130,'2025-09-21','2025-09-25','Delivered'),
(31,131,'2025-10-02','2025-10-06','Delivered'),
(32,132,'2025-10-11','2025-10-15','Delivered'),
(33,133,'2025-10-16',NULL,'In Transit'),
(34,134,'2025-10-21','2025-10-25','Delivered'),
(35,135,'2025-11-02','2025-11-06','Delivered'),
(36,136,'2025-11-11','2025-11-15','Delivered');

-- ============================================
-- DONE
-- ============================================

SELECT 'Database created successfully!' AS message;

-- select table
-- ============================================
select * from customers;

-- select specific_col from specific table..
-- ================================================

select customer_name from customers;

-- select some_col from specific table..[USING WHERE CLAUSE]..
-- ======================================================================

select customer_name, city from customers;


-- find customer from MP..

select * from customers
where state = "Madhya Pradesh";

select customer_name, city from customers
where state = "Madhya Pradesh";

-- fIND PRODUCT which price is  greater than 5000...
-- ==========================================================

select * from products
where price > 5000;

-- Order By [Sorting]
-- product from cheapest to expensive..
-- =============================================

select * from products
order by price asc;








































