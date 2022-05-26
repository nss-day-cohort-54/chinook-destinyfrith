-- Provide a query only showing the Customers from Brazil.

SELECT
    c.FirstName,
    c.LastName,
    c.Country
FROM customer c 
WHERE country = 'Brazil';