/* lengthen table; similar to pivot_long() function in R. */



-- using union statements

select product_id, 'store1' as store, store1 as price
from products
where store1 is not null
union
select product_id, 'store2' as store, store2 as price
from products
where store2 is not null
union
select product_id, 'store3' as store, store3 as price
from products
where store3 is not null


-- using unpivot() 

select product_id, store, price
from products
unpivot(
  price for store in (store1, store2, store3)
) as products_unpivoted
