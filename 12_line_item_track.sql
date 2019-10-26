/****************
Provide a query that includes the purchased track name with each invoice line item.
*****************/

select InvoiceLineId, InvoiceLine.TrackId, Track.Name
from InvoiceLine
	inner join Track
	on InvoiceLine.TrackId = Track.TrackId