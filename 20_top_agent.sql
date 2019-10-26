/*********************************************
Which sales agent made the most in sales over all?
**********************************************/

select top(1) Employee.FirstName + ' ' + Employee.LastName as EmployeeName,
	sum(Invoice.Total) as TotalSales
		from Employee
			join Customer on Customer.SupportRepId = Employee.EmployeeId
			join Invoice on Invoice.CustomerId = Customer.CustomerId
	group by Employee.LastName, Employee.FirstName
	order by sum(Invoice.Total) desc