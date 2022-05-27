--  Provide a query that shows the top 3 best selling artists.

SELECT 
    a.name,
    COUNT(t.TrackId) as NumberOfPurchases
FROM InvoiceLine il 
JOIN Track t 
    ON t.TrackId = il.TrackId
JOIN Album al  
    ON al.AlbumId = t.AlbumId
JOIN Artist a  
    ON a.ArtistId = al.ArtistId
GROUP BY a.ArtistId
ORDER BY NumberOfPurchases DESC
LIMIT 3