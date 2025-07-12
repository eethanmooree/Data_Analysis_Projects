SELECT 
    c.FirstName,
    c.LastName,
    ROUND(SUM(oi.Quantity * p.Price) / COUNT(DISTINCT o.OrderID), 2) AS Avg_Order_Value
FROM customers c
JOIN orders o ON c.CustomerID = o.CustomerID
JOIN order_items oi ON o.OrderID = oi.OrderID
JOIN products p ON oi.ProductID = p.ProductID
GROUP BY c.CustomerID, c.FirstName, c.LastName
ORDER BY Avg_Order_Value DESC
LIMIT 10;
