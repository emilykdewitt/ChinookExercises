/********************
Provide a query showing a unique/distinct list of billing countries from the Invoice table.
*********************/

select distinct BillingCountry
from Invoice
order by BillingCountry