/* Nth highest salary */


create function getNthHighestSalary(@N int) returns int as
begin
     return (
        
        select
 			distinct e.salary
 		from
			Employee e
 		where
 			@N = (
 				select
 					COUNT(distinct salary) from Employee e2
 					where
 						e.salary <= e2.salary
 			)
        
        
     );
end
