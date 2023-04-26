/* select customer names who do not have referee id of 2 */

select c.name
from Customer c
where referee_id != 2 or referee_id is null
