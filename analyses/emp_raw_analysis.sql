

with source as (

select * from "DEMO"."PUBLIC"."EMP"
),
renamed as (

select 
     id as emp_id,
     name as emp_name
     
from 
source
)

select * from renamed
