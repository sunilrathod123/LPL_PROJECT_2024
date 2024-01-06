-- we can chanage here materialized once we define here it will override the dbt_projet.yml configuration

 {{
  config(
    materialized = 'table'   
    )
}}


with source as(

select 
e.emp_name,
e.emp_id,
e.emp_salary,
m.manager_id
--                    
from 
{{ref("emp_cleansed")}} e

inner join

{{ref("manager_cleansed")}} m

on
e.emp_id=m.emp_id


),

final_data as (
select 
    emp_name,
    emp_id,
    emp_salary,
    manager_id
from 
source   
)



select 
    e.emp_name as employee_Name,
    m.emp_name as manager_Name,
    e.emp_salary as salary
from

 final_data  e
 inner join 
 final_data m

 on
 e.manager_id=m.emp_id
 
