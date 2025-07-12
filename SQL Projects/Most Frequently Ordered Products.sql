SELECT 
    p.ProductName,
    COUNT(*) AS Total_Orders
FROM order_items oi
JOIN products p ON oi.ProductID = p.ProductID
GROUP BY p.ProductName
ORDER BY Total_Orders DESC
LIMIT 10;
