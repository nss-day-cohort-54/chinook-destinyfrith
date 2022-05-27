-- Provide a query that shows the total number of tracks in each playlist. 
-- The resultant table should include:
-- Playlist name
-- Total number of tracks on each playlist

SELECT p.name, pt.PlaylistId, COUNT(pt.TrackId)
FROM PlaylistTrack pt
JOIN Playlist p
ON p.PlaylistId = pt.PlaylistId
GROUP BY pt.PlaylistId
