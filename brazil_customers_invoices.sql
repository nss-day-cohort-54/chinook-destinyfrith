-- Provide a query showing the Invoices of Customers who are from Brazil. 
-- The resultant table should include:
-- Customer's full name
-- Invoice Id,
-- Date of the invoice
-- Billing country

SELECT  
    c.FirstName,
    c.LastName,
    c.Country,
    i.InvoiceId,
    i.InvoiceDate
FROM customer c
JOIN invoice i 
ON c.CustomerId = i.CustomerId
WHERE c.Country = 'Brazil'