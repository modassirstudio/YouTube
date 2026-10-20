-- Part 2 — Aggregation (4 questions)

-- Show total sales amount per category, sorted highest first.
SELECT 
    p.category AS Category, SUM(s.amount) AS Total_Sales_Amount
FROM
    products p
        INNER JOIN
    sales s ON p.product_id = s.product_id
GROUP BY Category
ORDER BY Total_Sales_Amount DESC;

-- Show the average quantity per product.
SELECT 
    p.name AS Product,
    AVG(s.quantity) AS Average_Quantity_Per_Product
FROM
    products p
        INNER JOIN
    sales s ON p.product_id = s.product_id
GROUP BY Product;

-- Show the count of sales per customer.
SELECT 
    c.name AS Customer, COUNT(*) AS Count_of_Sales
FROM
    customers c
        INNER JOIN
    sales s ON c.customer_id = s.customer_id
GROUP BY Customer;

-- Show the highest amount per day (sale_date).
SELECT 
    DAYNAME(sale_date) AS Day, MAX(amount) AS Highest_Amount
FROM
    sales
GROUP BY sale_date;
