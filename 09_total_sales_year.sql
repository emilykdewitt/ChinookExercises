/****************
What are the respective total sales for 2009 and 2011?
*****************/

select(
	select sum(Total)
	from Invoice
	where InvoiceDate between '1/1/2009' and '12/31/2009 11:59:59'
	) as TotalFor2009
	(
	select sum(Total)
	from Invoice
	where InvoiceDate between '1/1/2011' and '12/31/2011 11:59:59'
	) as TotalFor2011
)