/* Extract duplicate emails; email addresses that appear at least twice in table */

select email as 'Email'
from Person
group by Email
having count(*) > 1


/* alternative query */

select distinct p.email as 'Email'
from Person as p 
where Email in(select email from person where email = p.email and id != p.id)
