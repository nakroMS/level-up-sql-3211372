-- Identify a few customers who have ordered delivery
-- from the restaurant the most often, so we can send
-- them a promotional coupon.

SELECT c.FirstName, c.LastName, COUNT(o.OrderID) as OrderCount, c.email
FROM Customers c 
LEFT JOIN Orders o 
ON c.CustomerID = o.CustomerID
GROUP BY o.CustomerID
ORDER BY 3 DESC
LIMIT 20;