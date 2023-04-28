/* select product id's and names of products that were only 
sold in the first quarter of 2019, and not after */

select p.product_id, p.product_name
from Product p inner join Sales s on p.product_id = s.product_id
where p.product_id not in (
    select product_id
    from Sales
    where sale_date between '2019-04-01' and '2019-06-02'
) and s.sale_date between '2019-01-01' and '2019-03-31'
