
select id, item, TO_TIMESTAMP_NTZ(date) as date from {{ ref('raw_purchases') }}