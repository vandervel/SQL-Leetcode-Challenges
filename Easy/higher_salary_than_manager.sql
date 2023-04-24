/* Employees who make a higher salary than their manager */

select b.name as 'Employee'
from Employee a inner join Employee b on a.id = b.managerId and b.salary > a.salary
