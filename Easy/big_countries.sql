/* countries with population of at least 25 million or an area of 
at least 3 million square kilometres */

select w.name, w.population, w.area
from World w
where w.area >= 3000000 or w.population >= 25000000
