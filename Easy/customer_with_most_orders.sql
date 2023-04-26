/* select the customer id of customer who has placed the most orders */


with num_orders as (
  select customer_number, count(order_number) as orders
  from Orders
  group by customer_number 
)

select customer_number 
from num_orders 
where orders in (
  select max(orders)
  from num_orders
)
