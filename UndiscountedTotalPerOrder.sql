--select OrderID, ProductID, unitPrice, Quantity, UnitPrice*Quantity as TotalSale
select OrderID, sum(UnitPrice*Quantity) as TotalSale
from [Order Details]
group by OrderId
