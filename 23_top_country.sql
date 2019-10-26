/*****************************
Which country's customers spent the most?
******************************/

select top(1) Invoice.BillingCountry, sum(Invoice.Total) as TotalSales
	from Invoice
	group by Invoice.BillingCountry
	order by TotalSales desc