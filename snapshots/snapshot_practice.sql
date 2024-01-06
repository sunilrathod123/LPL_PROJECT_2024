{% snapshot snapshot_name %}

{{
   config(
       target_database='DEMO',
       target_schema='PUBLIC ',
       unique_key='ID',

       strategy='timestamp',
       updated_at='H_DATE'
     
       
   )
}}

select * from {{ source('source_snapshot', 'EMP') }}

{% endsnapshot %}%}