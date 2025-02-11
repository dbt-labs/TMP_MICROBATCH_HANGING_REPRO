{{ config(
    materialized='incremental',
    incremental_strategy='microbatch',
    event_time='date',
    begin='2020-01-02',
    batch_size='year'
) }}

select * from {{ ref('purchases') }}