-- Provide a query that shows the invoices associated with each sales agent. The resultant table should include:
-- Sales Agent full name
-- Invoice ID

SELECT 
    i.InvoiceId,
    e.FirstName,
    e.LastName
FROM Employee e
JOIN Customer c
ON c.SupportRepId = e.EmployeeId
JOIN Invoice i 
WHERE c.CustomerId = i.CustomerId;