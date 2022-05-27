-- Provide a query that shows the most purchased track(s) of 2013.

SELECT Name, max(TrackSales)
FROM (
    SELECT t.Name, count(t.trackId) AS TrackSales
    FROM InvoiceLine il 
    JOIN Track t on t.TrackId = il.trackId
    JOIN Invoice i ON i.InvoiceId = il.InvoiceId
    WHERE i.InvoiceDate like '2013%'
    GROUP BY t.Name 
    ORDER BY TrackSales DESC
)