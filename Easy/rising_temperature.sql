/* select id's of temperature readings that are greater than the previous
date's temperature */


with prev_temp_table as (
  select id, temperature, lag(temperature) over (order by recordDate) as prev_temp
  from Weather
)

select id from prev_temp_table
where prev_temp < temperature


