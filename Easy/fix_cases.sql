/* Fix each entry in the name column to have the first letter capitalized, and the
remainder in lower case */

select user_id, upper(left(name, 1)) + lower(substring(name, 2, len(name)-1))  as name
from Users 
order by user_id
