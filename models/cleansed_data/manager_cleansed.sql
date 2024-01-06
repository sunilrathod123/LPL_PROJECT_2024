with cleansed as (

select * from  {{ ref('manager_raw') }}       -- used the exiting model output here

),

get_clensed as (

select 

         emp_id,
         manager_id

from 

cleansed     

)

select * from get_clensed