SQL QUERIES

Create SQL file:

sales_analysis.sql

QUERY 1 — TOTAL SALES
SELECT SUM(Sales) AS Total_Sales
FROM sales_data;

QUERY 2 — TOP PRODUCTS
SELECT Product_Name,
SUM(Sales) AS Revenue
FROM sales_data
GROUP BY Product_Name
ORDER BY Revenue DESC
LIMIT 10;

QUERY 3 — SALES BY REGION
SELECT Region,
SUM(Sales) AS Total_Sales
FROM sales_data
GROUP BY Region;

QUERY 4 — MONTHLY SALES TREND
SELECT Month,
SUM(Sales) AS Revenue
FROM sales_data
GROUP BY Month
ORDER BY Month;

QUERY 5 — CUSTOMER RETENTION
SELECT Customer_ID,
COUNT(Order_ID) AS Orders_Count
FROM sales_data
GROUP BY Customer_ID
HAVING Orders_Count > 1;