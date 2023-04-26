/* class with most students */

select class
from Courses
group by class having count(*) >= 5
