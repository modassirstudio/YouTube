-- Shop Sales Analysis Database
-- Author: Md Modassir
-- Date: 20 Oct 2026
-- Purpose: Portfolio project — SQL analysis on shop data
-- Database: MySQL

-- ============================================
-- 1. CREATE DATABASE & TABLES
-- ============================================
create database if NOT exists day6;
use day6;

CREATE TABLE products (
  product_id INT PRIMARY KEY AUTO_INCREMENT,
  name VARCHAR(50) NOT NULL,
  category VARCHAR(50),
  price DECIMAL(10,2),
  stock INT
);
    
CREATE TABLE customers (
  customer_id INT PRIMARY KEY AUTO_INCREMENT,
  name VARCHAR(50),
  city VARCHAR(50),
  joined_date DATE
);
    
CREATE TABLE sales (
  sale_id INT PRIMARY KEY AUTO_INCREMENT,
  product_id INT,
  customer_id INT,
  quantity INT,
  amount DECIMAL(10,2),
  sale_date DATE,
  FOREIGN KEY (product_id) REFERENCES products(product_id),
  FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);

-- ============================================
-- 2. INSERT DATA
-- ============================================

insert INTO products (name, category, price, stock)values
	('4" Pipe', 'Sanitary', 540.00, 20),
    ('Tank 1000ltr', 'Storage', 8500.00, 4),
    ('Tank 500ltr', 'Storage', 4000.00, 3),
    ('Motor 1HP', 'Water Supply', 7800.00, 2),
    ('3" Pipe', 'Sanitary', 280.00, 37),
    ('3/4" Pipe', 'Water Supply', 180.00, 110),
    ('Giecer', 'Storage', 11400.00, 1),
    ('Cancilled', 'Fitting', 770.00, 6),
    ('Commode Seat', 'Sanitary', 1300.00, 2),
    ('Toilet Seat', 'Sanitary', 1100.00, 15);
    
insert into customers (name, city, joined_date)values
	('Taalib', 'Bihar Sharif', '2026-02-14'),
    ('Kundan', 'Harnaut', '2026-02-27'),
    ('Rakshit', 'Bihar Sharif', '2026-04-08'),
    ('Modassir', 'Bihar Sharif', '2026-05-14'),
    ('Anurag', 'Shekpura', '2026-08-22');
    
insert into sales ( product_id, customer_id, quantity, amount, sale_date)values
	(2, 1, 1, 8500.00, '2026-02-15'),
	(6, 1, 15, 2700.00, '2026-02-15'),
	(2, 2, 1, 8500.00, '2026-02-27'),
	(6, 2, 10, 1800.00, '2026-02-27'),
	(8, 2, 2, 1540.00, '2026-02-27'),
	(4, 2, 1, 7800.00, '2026-03-15'),
	(6, 2, 20, 3600.00, '2026-03-15'),
	(3, 3, 1, 4000.00, '2026-04-08'),
	(7, 3, 1, 11400.00, '2026-04-08'),
	(5, 3, 8, 1440.00, '2026-04-08'),
	(5, 4, 6, 1680.00, '2026-05-14'),
	(10, 5, 1, 1100.00, '2026-05-28'),
	(5, 5, 6, 1680.00, '2026-05-28'),
	(1, 5, 2, 1080.00, '2026-05-28'),
	(10, 4, 2, 2200.00, '2026-06-03'),
	(1, 4, 3, 1620.00, '2026-06-03'),
	(4, 1, 1, 7800.00, '2026-06-10'),
	(9, 4, 1, 1300.00, '2026-07-24'),
	(1, 4, 3, 1620.00, '2026-07-24'),
	(9, 5, 1, 1300.00, '2026-08-22');

