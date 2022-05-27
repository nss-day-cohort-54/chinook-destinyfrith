-- Provide a query that shows the most purchased Media Type.

SELECT max(total), Name
FROM (
    SELECT m.Name, COUNT(m.MediaTypeId) AS Total
    FROM MediaType m 
    JOIN Track t on t.MediaTypeId = m.MediaTypeId
    JOIN InvoiceLine il on il.TrackId = t.TrackId
    GROUP BY m.Name
)