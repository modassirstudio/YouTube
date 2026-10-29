create database if not exists CD;
use CD;

SELECT 
    *
FROM
    Sales_Data;

-- let's find the best selling item -- it's unknown which is not updated as an item in record.
SELECT 
    Item, SUM(Quantity) AS Total_Quantity_Sold
FROM
    Sales_Data
GROUP BY Item
ORDER BY Total_Quantity_Sold DESC;

-- let's find the best selling item by price -- it's smoothie, i calculate the price for one unit not the calculate price for one unit.
SELECT 
    Item, SUM(Calculate_Price) AS Total_Price
FROM
    Sales_Data
GROUP BY Item
ORDER BY Total_Price DESC;

-- let's find highest revenue by payment method -- it's cash as expected
SELECT 
    Payment_Method, SUM(Calculate_Price) AS Revenue
FROM
    Sales_Data
GROUP BY Payment_Method
ORDER BY Revenue DESC;

-- let's find higest sales in a day -- 28/10/2023
SELECT 
    Transaction_Date, SUM(Calculate_Price)
FROM
    Sales_Data
GROUP BY Transaction_Date
ORDER BY SUM(Calculate_Price) DESC
LIMIT 1;