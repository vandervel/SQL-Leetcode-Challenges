-- at least 3 consecutive days that had at least 100 people


with consecutive_rows as
(select *, id - row_number()over(order by id asc) as rnk
from stadium
where people >= 100)

select id, visit_date, people
from consecutive_rows
where rnk in (
  select rnk 
  from consecutive_rows
  group by rnk having count(*) >= 3
)
