(select p1.FirstName, p1.LastName, a1.City, a1.State
from Person p1, Address a1
where p1.PersonId = a1.PersonId)
union
(select p2.FirstName, p2.LastName, null as City, null as State
from Person p2
where p2.PersonId not in
  (select a2.PersonId from Address a2))