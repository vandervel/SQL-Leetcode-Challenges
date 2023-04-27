/* actors and directors that have collaborated at least 3 times */

select actor_id, director_id
from ActorDirector
group by actor_id, director_id having count(*) >= 3
