-- Part 4 — Advanced (3 questions)

-- Show categories where the average amount is greater than 200 (Use HAVING).
SELECT 
    c.name AS Category, AVG(s.amount) AS Average_Amount
FROM
    products c
        INNER JOIN
    sales s ON c.product_id = s.product_id
GROUP BY Category
HAVING AVG(s.amount) > 200;

-- Rank products by their total revenue (Use RANK()).
select p.name as Products, sum(s.amount) as Revenue,
rank() over(order by sum(s.amount) desc) as Ranks
from products p inner join sales s on p.product_id = s.product_id group by Products;

-- Show each sale with a running total of the amount ordered by sale_date (Use SUM() OVER()).
select sale_date as Sale, sum(amount) as Total_Amount,
sum(amount) over(order by sale_date) as Running_Total 
from sales;
