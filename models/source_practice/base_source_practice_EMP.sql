with source as (
      select * from {{ source('source_practice', 'employee') }}
),
renamed as (
    select
        {{ adapter.quote("ID") }},
        {{ adapter.quote("NAME") }},
        {{ adapter.quote("CITY") }},
        {{ adapter.quote("H_DATE") }},
        {{ adapter.quote("SALARY") }},
        {{ adapter.quote("DEPT") }},
        {{ adapter.quote("GENDER") }}

    from source
)
select * from renamed
  