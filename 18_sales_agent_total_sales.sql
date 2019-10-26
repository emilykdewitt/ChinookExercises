/************
Provide a query that shows total sales made by each sales agent
Invoice.CustomerId = Customer.CustomerId -> Customer.SupportRepId = Employee.EmployeeId -> Employee.Name
*************/

select e.EmployeeId, e.FirstName, sum(i.Total) as EmployeeSalesTotal
from Invoice i, Customer c, Employee e
where i.CustomerId = c.CustomerId
and c.SupportRepId = e.EmployeeId
group by e.EmployeeId, e.FirstName