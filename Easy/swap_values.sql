/* swap all female and male values in the 'sex' column */

update Salary
set sex = case when sex = 'm' then 'f' else 'm' end
