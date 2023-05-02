/* get bonuses for each employee; employees with an odd numbered id who do
not have names beginning with M receive 100% of their salary as a bonus */


select e.employee_id, case
                        when e.employee_id % 2 = 1 and e.name not like 'M%' then e.salary else 0 
                      end as bonus
from Employees e
