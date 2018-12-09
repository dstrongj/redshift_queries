
### See running transactoins

select pid, trim(starttime) as start,
duration, trim(user_name) as user,
substring (query,1,40) as querytxt
from stv_recents
where status = 'Running';
 

## Terminate running transactions 

select pg_terminate_backend (*PID_HERE*);
commit