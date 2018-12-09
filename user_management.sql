


##list current users
select * from pg_user;


##create new users
CREATE USER username with password 'password'  in group dbgroupnamehere;
commit


##change user password
ALTER USER username password 'password';
commit


##remove from database
DROP USER username;
commit
