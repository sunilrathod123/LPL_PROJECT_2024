with cleansed as (

select * from  {{ ref('emp_raw') }}       -- used the exiting model output here

),

get_clensed as (

select 

         emp_id,
         emp_name,
         emp_salary,
         department

from 

cleansed     

)

select * from get_clensed