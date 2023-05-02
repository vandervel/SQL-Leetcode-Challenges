/* get total distance travelled by each passenger */


select u.name, sum(isnull(r.distance, 0)) as travelled_distance
from Users u left join Rides r on u.id = r.user_id
group by r.user_id, u.name
order by travelled_distance desc, u.name asc
