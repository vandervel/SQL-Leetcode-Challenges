/* patients with condition that starts with DIAB100 */

select patient_id, patient_name, conditions
from Patients
where conditions like '% DIAB100%' or conditions like 'DIAB1%'
