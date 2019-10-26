/*****
Provide a query that shows the # of invoices per country. HINT: GROUP BY
*******/

select BillingCountry, count(InvoiceId) as NumOfInvoices
from Invoice
group by BillingCountry