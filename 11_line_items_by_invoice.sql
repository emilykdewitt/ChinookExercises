/**********
Looking at the InvoiceLine table, provide a query that COUNTs the number of line items for each Invoice.
***********/

select InvoiceId, count(InvoiceLineId) as NumOfLineItems
from InvoiceLine
group by InvoiceId
