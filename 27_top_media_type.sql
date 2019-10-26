/********************************
Provide a query that shows the most purchased Media Type.
*********************************/

select top (1) MediaType.Name, count(MediaType.MediaTypeId) as NumOfPurchases
from InvoiceLine
	join Track on InvoiceLine.TrackId = Track.TrackId
	join MediaType on Track.MediaTypeId = MediaType.MediaTypeId
group by MediaType.MediaTypeId, MediaType.Name
order by NumOfPurchases desc