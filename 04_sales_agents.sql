/******************
Provide a query showing only the Employees who are Sales Agents.
*******************/

select EmployeeId, FirstName, LastName, Title
from Employee
where Title = 'Sales Support Agent'