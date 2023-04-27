/* names of salespeople who did not have an order with the company 'RED' */


select s.name
from SalesPerson s
where s.sales_id not in (
  select o.sales_id from orders o left join company c on o.com_id = c.com_id
  where name='RED'
)
