/* swap each pair of consecutive students. If total number of students
is odd, do not swap last student */


select case 
        when id % 2 = 1 then lead(id,1, id) over (order by id)
        else id - 1      
                
       end as id, student
from Seat
order by id
