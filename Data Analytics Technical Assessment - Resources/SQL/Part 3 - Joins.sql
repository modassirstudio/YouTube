-- Part 3 — Joins (4 questions)

-- Show all sales with customer name and product name.
SELECT 
    c.name, p.name, s.*
FROM
    sales s
        INNER JOIN
    products p ON s.product_id = p.product_id
        INNER JOIN
    customers c ON s.customer_id = c.customer_id;

-- Show all customers with their total spending (include customers with zero spending).
SELECT 
    c.name AS Customers, SUM(s.amount) AS Total_Spending
FROM
    customers c
        LEFT JOIN
    sales s ON c.customer_id = s.customer_id
GROUP BY Customers;

-- Show all products with their total revenue (include products with zero sales).
SELECT 
    p.name AS Product, SUM(s.amount) AS Revenue
FROM
    products p
        LEFT JOIN
    sales s ON p.product_id = s.product_id
GROUP BY Product;

-- Show only the products that have never been sold.
SELECT 
    p.name AS Product
FROM
    products p
        LEFT JOIN
    sales s ON p.product_id = s.product_id
WHERE
    s.product_id IS NULL;
