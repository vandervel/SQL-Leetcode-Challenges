/* all employees who are top-3 earners; employees
who make a salary in the top 3 of their respective department */ 

with temp as (
  select d.name as 'Department', e.name as 'Employee', e.salary as 'Salary',
  dense_rank() over(partition by d.name order by e.salary desc) as 'ranking'
  from employee e
  left join department d
  on e.departmentid= d.id
)

select Department, Employee, Salary
from temp
where ranking between 1 and 3
