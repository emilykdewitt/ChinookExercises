/*****************************
Provide a query that shows the top 5 most purchased songs.
******************************/

select top (5) Track.TrackId, Track.Name, count(InvoiceLine.TrackId) as PurchaseCount
from InvoiceLine
	join Track on InvoiceLine.TrackId = Track.TrackId
group by Track.TrackId, Track.Name
order by PurchaseCount desc