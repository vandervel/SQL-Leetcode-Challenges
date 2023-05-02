/* names of customers and balances for customers with balance over 10000 */


with balances as (
  select u.name, sum(t.amount) as balance
  from Users u left join Transactions t on u.account = t.account
  group by u.name 

)

select * from balances where balance > 10000
