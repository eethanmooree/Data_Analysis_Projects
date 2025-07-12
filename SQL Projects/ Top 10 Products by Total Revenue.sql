SELECT 
  ProductName,
  Category,
  SUM(Price) AS Total_Revenue
FROM products
GROUP BY ProductName, Category
ORDER BY Total_Revenue DESC
LIMIT 10;
