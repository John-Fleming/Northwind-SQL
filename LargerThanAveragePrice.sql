declare @avgPrice decimal(4,2)

set @avgPrice = (
	select avg(UnitPrice)
	from Products
)

select ProductName, UnitPrice, @avgPrice as [Average Product Price]
from products
where UnitPrice > @avgPrice
