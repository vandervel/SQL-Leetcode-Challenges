/* Earliest login date for each player */


select player_id, min(event_date) as first_login
from Activity
group by player_id
