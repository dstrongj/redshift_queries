



## List out last time table was queried

select
    a.*,
    b.last_query,
    b.perm_table_name
from svv_table_info a
left join (
    select 
    distinct perm_table_name,
    max(endtime) last_query
from stl_scan
group by perm_table_name)b on b.perm_table_name = a."table"
where a.schema = '' or a.schema = ''