select OrderID, sum(UnitPrice*Quantity) as TotalSale, sum((UnitPrice*Quantity)-((UnitPrice*Quantity)*Discount)) as DiscountedSale
from [Order Details]
group by OrderId
