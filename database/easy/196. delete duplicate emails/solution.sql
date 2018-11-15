# v1 Runtime: 812 ms
delete p2
from Person p1, Person p2
where p1.Email = p2.Email
and p1.Id < p2.Id;

# v2 Runtime: 551 ms
DELETE p
FROM Person p, 
    (SELECT MIN(Id) as Id, Email
    FROM Person
    GROUP BY Email) as keep
WHERE p.Email = keep.Email
AND p.Id != keep.Id;
