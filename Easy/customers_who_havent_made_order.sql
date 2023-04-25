/* names of customers who haven't made any orders */

select c.name as Customers
from Customers c 
where c.id not in (select customerid from Orders) 



/* alternative query */

select c.name as Customers
from customers c left join orders o on c.id = o.customerid
where o.customerId is null
