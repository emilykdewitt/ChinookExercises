/*************
Provide a query that shows all the Tracks, but displays no IDs. 
The result should include the Album name, Media type and Genre.
****************/

select t.Name as TrackName, a.Title as AlbumTitle, m.Name as MediaType, g.Name as GenreName
from Track t
inner join Album a on t.AlbumId = a.AlbumId
inner join MediaType m on t.MediaTypeId = m.MediaTypeId
inner join Genre g on t.GenreId = g.GenreId
inner join Artist ar on a.ArtistId = ar.ArtistId