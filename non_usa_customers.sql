SELECT
    c.FirstName,
    c.LastName,
    c.CustomerId,
    c.Country
FROM customer c 
WHERE c.country != 'USA';