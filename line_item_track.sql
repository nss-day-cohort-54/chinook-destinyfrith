-- Provide a query that shows each Invoice line item, 
-- with the name of the track that was purchased.

SELECT 
    i.InvoiceLineId, 
    i.TrackId, 
    t.Name
FROM InvoiceLine i 
JOIN Track t 
ON i.TrackId = t.TrackId