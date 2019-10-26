/****************************
Provide a query that shows the top 3 best selling artists.
*****************************/

select top (3) Artist.ArtistId, Artist.Name, sum(InvoiceLine.UnitPrice) as TotalSales
from InvoiceLine
	join Track on InvoiceLine.TrackId = Track.TrackId
	join Album on Track.AlbumId = Album.AlbumId
	join Artist on Album.ArtistId = Artist.ArtistId
group by Artist.ArtistId, Artist.Name
order by TotalSales desc
