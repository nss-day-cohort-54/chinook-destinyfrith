-- Provide a query that shows the top 5 most purchased tracks overall

SELECT 
    t.Name TrackName, count(t.TrackId) as TotalSales
FROM Track t 
JOIN InvoiceLine il ON t.trackId = il.TrackId
GROUP BY TrackName
ORDER BY TotalSales
LIMIT 5