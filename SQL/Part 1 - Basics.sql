-- Part 1 — Basics (4 questions)

-- Show all products with a price greater than 100.
SELECT 
    name AS Products
FROM
    products
WHERE
    price > 100;

-- Show the top 5 customers by name (alphabetical order).
SELECT 
    name
FROM
    customers
ORDER BY name DESC LIMIT 5;

-- Show all sales that happened in September 2026.
SELECT 
    *
FROM
    sales
WHERE
    year(sale_date) = 2026 and month(sale_date) = 9;

-- Count the total number of sales in the table.
SELECT 
    COUNT(*) AS Number_of_Sales
FROM
    sales;