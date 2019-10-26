/************************
Provide a query only showing the Customers from Brazil.
*************************/

select FirstName + ' ' + LastName as FullName, CustomerId, Country
from Customer
where Country = 'Brazil'
order by LastName