/* Classify each node in a table representing a tree as either a root node,
an inner node, or a leaf node */


select id,  case when p_id is null then 'Root'
                 when p_id is not null and id in (select p_id from Tree) then 'Inner'
                 else 'Leaf' 
            end as 'type'
from Tree
