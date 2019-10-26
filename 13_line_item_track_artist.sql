/***********
Provide a query that includes the purchased track name AND artist name with each invoice line item.
************/

select InvoiceLineId, InvoiceLine.TrackId, Track.Name, Artist.Name
from InvoiceLine
	inner join Track
	on InvoiceLine.TrackId = Track.TrackId
	inner join Album
	on Track.AlbumId = Album.AlbumId
	inner join Artist
	on Album.ArtistId = Artist.ArtistId