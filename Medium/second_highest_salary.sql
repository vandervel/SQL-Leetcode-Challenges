/* Second highest salary */

/* return the second highest salary from Employee table,
if such a record does not exist, such as the case in which 
there is only one salary in the table, return null */

select max(salary) as SecondHighestSalary
from Employee
where salary < (select max(salary) from Employee)