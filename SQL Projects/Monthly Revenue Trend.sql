SELECT 
    MONTH(o.OrderDate) AS Month,
    ROUND(SUM(oi.Quantity * p.Price), 2) AS Monthly_Revenue
FROM orders o
JOIN order_items oi ON o.OrderID = oi.OrderID
JOIN products p ON oi.ProductID = p.ProductID
GROUP BY MONTH(o.OrderDate)
ORDER BY Month;
