

with source as (

select * from DEMO.PUBLIC.EMP
),
renamed as (

select 
     id as emp_id,
     name as emp_name,
     city,
     H_DATE AS Hiring_date,
     salary as emp_salary,
     dept as department,
     gender as sex

from 

source


) 

select * from renamed