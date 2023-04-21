/* Combining two tables */

/* Query to combine a Person table and Address table,
where personIds without a city or state are returned in
output as null */

select firstName, lastName, city, state
from Person p left join Address a on p.personId = a.personId
