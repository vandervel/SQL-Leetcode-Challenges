/* get unique lead and partner ids for each date and vehicle make */

select date_id, make_name, count(distinct lead_id) as unique_leads, count(distinct partner_id) as unique_partners
from DailySales
group by date_id, make_name
