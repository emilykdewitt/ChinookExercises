/*********************************************
Provide a query that shows the invoices associated with each sales agent. 
The resultant table should include the Sales Agent's full name.
*********************************************/

select e.FirstName + ' ' + e.LastName as FullName, InvoiceId
from Invoice i, Customer c, Employee e
where i.CustomerId = c.CustomerId and
c.SupportRepId = e.EmployeeId
order by FullName, InvoiceId
