SELECT 
    i.CustomerId, MAX(Total), c.Country
FROM
    Invoice AS i
        JOIN
    Customer AS c ON c.CustomerId = i.CustomerId
GROUP BY customerId
ORDER BY MAX(Total) DESC
LIMIT 1;