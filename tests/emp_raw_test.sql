select 
*
from 

{{ ref('emp_raw') }}  

where emp_id is  null 