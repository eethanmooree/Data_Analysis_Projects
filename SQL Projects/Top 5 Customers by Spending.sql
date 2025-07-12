SELECT 
    c.FirstName,
    c.LastName,
    ROUND(SUM(oi.Quantity * p.Price), 2) AS Total_Spent
FROM customers c
JOIN orders o ON c.CustomerID = o.CustomerID
JOIN order_items oi ON o.OrderID = oi.OrderID
JOIN products p ON oi.ProductID = p.ProductID
GROUP BY c.CustomerID, c.FirstName, c.LastName
ORDER BY Total_Spent DESC
LIMIT 5;
