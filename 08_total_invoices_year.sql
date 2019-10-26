--How many Invoices were there in 2009 and 2011?

/***
select count(InvoiceId) as InvoicesIn2009
from Invoice
where InvoiceDate between '1/1/2009' and '12/31/2009 11:59:59'

select count(InvoiceId) as InvoicesIn2011
from Invoice
where InvoiceDate between '1/1/2011' and '12/31/2011 11:59:59'

***/

select year(InvoiceDate), count(*)
from Invoice
where year(InvoiceDate) in (2009,2011)
group by year(InvoiceDate)