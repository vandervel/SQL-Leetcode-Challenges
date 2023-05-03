/* ids of employees who's name is missing from either the salaries
or employees table */

 select e.employee_id
 from Employees e
 where e.employee_id not in (
   select employee_id
   from Salaries
 )

 union

 select s.employee_id
 from Salaries s
 where s.employee_id not in (
   select employee_id
   from Employees
 )
