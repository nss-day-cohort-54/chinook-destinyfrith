-- How many Invoices were there in 2009 and 2011?
-- HINT: COUNT

SELECT COUNT(*) 
FROM Invoice i
WHERE i.InvoiceDate LIKE '%2009%';


SELECT COUNT(*) 
FROM Invoice i 
WHERE i.InvoiceDate LIKE '%2011%';