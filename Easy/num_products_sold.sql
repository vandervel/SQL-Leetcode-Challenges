/* number of products and which products sold on each date */

select sell_date, count(distinct product) as num_sold, string_agg( product, ',') as products
from (
  select distinct *
  from Activities
) temp
group by sell_date
