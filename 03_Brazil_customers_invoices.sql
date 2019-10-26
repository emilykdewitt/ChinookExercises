/*****************************
Provide a query showing the Invoices of customers who are from Brazil. 
The resultant table should show the customer's full name, Invoice ID, 
Date of the invoice and billing country.
******************************/

select FirstName + ' ' + LastName as FullName, InvoiceId, InvoiceDate, BillingCountry
from Invoice
	left join Customer c
		on c.Country = 'Brazil'
order by c.LastName