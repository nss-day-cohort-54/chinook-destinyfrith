-- Provide a query that shows the customers and employees associated with each invoice. 
-- The resultant table should include:
-- Invoice Total
-- Customer Name
-- Customer Country
-- Sale Agent full name

SELECT
    i.InvoiceId,
    i.Total,
    c.FirstName,
    c.LastName,
    c.Country,
    e.FirstName,
    e.LastName
FROM Invoice i 
JOIN Customer c 
ON i.CustomerId = c.CustomerId 
JOIN Employee e 
WHERE e.EmployeeId = c.SupportRepId;