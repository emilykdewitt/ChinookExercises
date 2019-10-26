/*************
Provide a query that shows all Invoices but includes the # of invoice line items.
**************/

select InvoiceId, count(InvoiceId) as NumOfLineItems
from InvoiceLine
group by InvoiceId
