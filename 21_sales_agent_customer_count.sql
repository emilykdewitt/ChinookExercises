/**********
Provide a query that shows the count of customers assigned to each sales agent.
***********/

select e.FirstName, count(*)
from Customer c
	join Employee e
		on c.SupportRepId = e.EmployeeId
group by e.EmployeeId, e.FirstName