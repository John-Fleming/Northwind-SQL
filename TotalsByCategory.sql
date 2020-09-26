--all products grouped by category with orderId, quanity ordered, and unit price
select c.CategoryName, 
	p.ProductName,
	od.OrderID, od.Quantity, od.UnitPrice,
	od.Quantity*od.UnitPrice as TotalSales
from Categories c
	join products p
		on c.CategoryID = p.CategoryID
	join [order details] od
		on p.ProductID = od.ProductID
order by c.CategoryName, p.ProductName

--Total number and sales of each product sold
select c.CategoryName, 
	p.ProductName,
	sum(od.quantity) as TotalQuantityOrdered,
	sum(od.quantity*od.unitprice) as TotalSales
from Categories c
	join products p
		on c.CategoryID = p.CategoryID
	join [order details] od
		on p.ProductID = od.ProductID
group by c.CategoryName, p.ProductName
order by c.CategoryName, p.ProductName


--totals by category
select c.CategoryName, 
	sum(od.quantity) as TotalItemsOrdered,
	sum(od.quantity*od.unitprice) as TotalSales
from Categories c
	join products p
		on c.CategoryID = p.CategoryID
	join [order details] od
		on p.ProductID = od.ProductID
group by c.CategoryName
order by c.CategoryName