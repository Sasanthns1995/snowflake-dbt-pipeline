{{ config(
    materialized = 'table'
) }}

select
    cst_id as customer_id,
    cst_key as customer_key,
    cst_firstname as first_name,
    cst_lastname as last_name,
    cst_marital_status as marital_status,
    cst_create_date as created_date
from {{ source('crm_raw', 'cust_info') }}
where cst_id is not null

 



 
