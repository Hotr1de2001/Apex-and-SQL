create user Sneakers_Arefyev
        identified by Sneakerspw
        default tablespace sysaux
        temporary tablespace temp
        account unlock;
        
alter user Sneakers_Arefyev quota unlimited on sysaux;

grant create session to Sneakers_Arefyev;

grant create view to Sneakers_Arefyev;
grant create table to Sneakers_Arefyev;
grant create procedure to Sneakers_Arefyev;
grant create trigger to Sneakers_Arefyev;
grant create SEQUENCE to Sneakers_Arefyev;

GRANT ALTER ANY TABLE TO Sneakers_Arefyev;
GRANT ALTER ANY PROCEDURE TO Sneakers_Arefyev;
GRANT ALTER ANY TRIGGER TO Sneakers_Arefyev;
GRANT ALTER PROFILE TO Sneakers_Arefyev;

GRANT DELETE ANY TABLE TO Sneakers_Arefyev;
GRANT DROP ANY TABLE TO Sneakers_Arefyev;
GRANT DROP ANY PROCEDURE TO Sneakers_Arefyev;
GRANT DROP ANY TRIGGER TO Sneakers_Arefyev;
GRANT DROP ANY VIEW TO Sneakers_Arefyev;