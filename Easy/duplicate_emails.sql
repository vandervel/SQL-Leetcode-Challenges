/* Extract duplicate emails; email addresses that appear at least twice in table */

select email as 'Email'
from Person
group by Email
having count(*) > 1
