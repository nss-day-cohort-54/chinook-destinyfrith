-- Provide a query that shows each Invoice line item, 
-- with the name of the track that was purchase, and the name of the artist.

SELECT 
    i.InvoiceLineId, 
    i.TrackId, 
    t.Name,
    ar.Name
FROM InvoiceLine i 
JOIN Track t 
ON i.TrackId = t.TrackId
JOIN Album a 
    ON a.AlbumId = t.AlbumId
JOIN Artist ar 
    ON ar.ArtistId = a.ArtistId