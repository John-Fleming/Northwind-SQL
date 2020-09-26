select top 1 datepart(quarter,ShippedDate) as ShippedQuarter, 
	count(1) as Orders, 
	sum(Subtotal) as TotalSales 
from [Summary of Sales by Quarter]
where year(shippedDate) = 1997
group by datepart(quarter,ShippedDate)
order by TotalSales desc
