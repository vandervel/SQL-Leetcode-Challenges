/* calculate cancellation rate on 3 specific days of trips strictly associate with users whom have not been banned */


with unbanned_user_ids as (
  select users_id 
  from Users
  where banned = 'No'
  
)


select request_at as 'Day', round(convert(float,sum(case when status like 'cancelled%' then 1 else 0 end )) / count(*), 2) as 'Cancellation Rate'
from Trips
where client_id in (select * from unbanned_user_ids) and driver_id in (select * from unbanned_user_ids)
group by request_at having request_at between '2013-10-01' and '2013-10-03'
