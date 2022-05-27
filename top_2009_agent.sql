-- Which sales agent made the most in sales in 2009?
-- HINT: Use the MAX function on a subquery.

SELECT MAX(Total), SalesAgent
FROM (SELECT e.firstName || " " || e.lastName as SalesAgent, sum(i.total) Total
FROM Employee e 
JOIN customer c ON c.SupportRepId = e.EmployeeId 
JOIN Invoice i on i.CustomerId = c.CustomerId
WHERE strftime('%Y', i.InvoiceDate) = '2009'
-- where i.InvoiceDate like '2009%'
GROUP BY e.EmployeeId)