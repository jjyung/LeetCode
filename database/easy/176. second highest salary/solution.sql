select Max(Salary)
from
  (select Salary
  from Employee e2
  where Salary <
    (select Max(Salary)
    from Employee e1)) as s