-- Which country's customers spent the most?
-- HINT: Use the MAX function on a subquery.

SELECT
    MAX(TotalSales) as TotalSales,
    BillingCountry
FROM (
    SELECT 
        i.BillingCountry,
        SUM(i.Total) AS TotalSales
    FROM Invoice i 
    GROUP BY i.BillingCountry
)