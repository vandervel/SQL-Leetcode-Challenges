/* id's of authors that viewed their own article */


select distinct author_id as 'id'
from Views
where author_id = viewer_id
order by id
