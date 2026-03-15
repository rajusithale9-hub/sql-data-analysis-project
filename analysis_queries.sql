1. View Data
SELECT * FROM Sales;
2. Total Sales Amount
SELECT SUM(Quantity * Price) AS Total_Sales
FROM Sales;
3. Sales by Region
SELECT Region, SUM(Quantity * Price) AS Total_Sales
FROM Sales
GROUP BY Region;
4. Sales by Product
SELECT Product, SUM(Quantity * Price) AS Total_Sales
FROM Sales
GROUP BY Product;
5. Monthly Sales
SELECT MONTH(OrderDate) AS Month,
       SUM(Quantity * Price) AS Monthly_Sales
FROM Sales
GROUP BY MONTH(OrderDate);
6. Top Selling Product
SELECT Product,
       SUM(Quantity) AS Total_Quantity
FROM Sales
GROUP BY Product
ORDER BY Total_Quantity DESC;
7. Running Total (Important Question)
SELECT OrderDate,
       SUM(Quantity * Price) OVER (ORDER BY OrderDate) AS Running_Total
FROM Sales;
8. Highest Sales Region
SELECT TOP 1 Region,
       SUM(Quantity * Price) AS Total_Sales
FROM Sales
GROUP BY Region
ORDER BY Total_Sales DESC;
9. Average Sales
SELECT AVG(Quantity * Price) AS Avg_Sales
FROM Sales;
🔟 Orders Above Average Sales
SELECT *
FROM Sales
WHERE (Quantity * Price) >
      (SELECT AVG(Quantity * Price) FROM Sales);
