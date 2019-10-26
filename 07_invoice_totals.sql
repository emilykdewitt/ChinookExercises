/*********************************
Provide a query that shows the Invoice Total, Customer name, 
Country and Sale Agent name for all invoices and customers.
**********************************/

select i.InvoiceId, i.Total as InvoiceTotal, c.FirstName + ' ' + c.LastName as CustomerFullName, c.Country as CustomerCountry, e.FirstName + ' ' + e.LastName as SalesAgentFullName
from Invoice i, Customer c, Employee e
where i.CustomerId = c.CustomerId and
c.SupportRepId = e.employeeId
order by c.LastName