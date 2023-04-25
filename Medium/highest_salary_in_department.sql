/* employee with highest salary in department */


select d.name as 'Department', e.name as 'Employee', salary as 'Salary'
from Employee e inner join Department d on e.departmentId = d.id
where salary in (
  select max(salary)
  from Employee
  group by departmentId
)
