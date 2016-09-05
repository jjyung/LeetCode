select C.Name as Customers
from Customers C
where C.Id not in (
  select CustomerId 
  from Orders);