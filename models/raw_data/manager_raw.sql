with source as (

select * from "DEMO"."PUBLIC"."manager"

),

renamed as (

    select 
          id as emp_id,
          manager_id as manager_id
    from
    source         

)

select * from renamed