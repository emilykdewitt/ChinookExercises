/*************
Which sales agent made the most in sales in 2009? HINT: TOP

**************/

select top(1) Employee.FirstName + ' ' + Employee.LastName as EmployeeName,
	sum(Invoice.Total) as TotalAnnualSales,
	year(Invoice.InvoiceDate) as [Year]
		from Employee
			join Customer on Customer.SupportRepId=Employee.EmployeeId
			join Invoice on Invoice.CustomerId=Customer.CustomerId
				where year(InvoiceDate) = '2009'
		group by Employee.LastName, Employee.FirstName, year(Invoice.InvoiceDate)
		order by sum(Invoice.Total) desc
