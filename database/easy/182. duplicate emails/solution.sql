select p.Email
from (select Id, count(*) as count
  from Person
  group by Email) as stat, Person p
where stat.count > 1 
and stat.Id = p.Id;