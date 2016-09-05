select today.Id
from Weather today, Weather yesterday
where datediff(today.Date, yesterday.Date) = 1
and today.Temperature > yesterday.Temperature;