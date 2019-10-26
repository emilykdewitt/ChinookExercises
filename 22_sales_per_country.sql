/*************************************
Provide a query that shows the total sales per country.
**************************************/

select sum(Invoice.Total) as TotalSales, Invoice.BillingCountry
from Invoice
group by Invoice.BillingCountry