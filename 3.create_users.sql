alter session set "_ORACLE_SCRIPT"=true;
-- Create the user OP
drop user OP cascade;
create user OP
  identified by cashflow
  default tablespace DATA
  temporary tablespace TEMP
  profile DEFAULT
  quota unlimited on data;

 CREATE ROLE op_user not identified;
 CREATE ROLE op_writer not identified ;
 CREATE ROLE op_dba not identified ;

GRANT CREATE PROCEDURE TO op_dba ;
GRANT CREATE TABLE TO op_dba ;
GRANT CREATE TRIGGER TO op_dba ;
GRANT CREATE USER TO op_dba ;
GRANT ALTER USER TO op_dba ;
GRANT DROP USER TO op_dba ;
GRANT CREATE VIEW TO op_dba ;
GRANT CREATE SEQUENCE TO op_dba ;


GRANT SELECT ON sys.dba_free_space TO op_user ;
GRANT CREATE SESSION TO op_user ;

alter profile default limit sessions_per_user Unlimited;

alter system set "_fix_control"='17376322:OFF' scope=both;


--drop user super cascade;

GRANT DEBUG CONNECT SESSION to op;
grant op_dba to op with admin option;
grant op_user to op with admin option;
grant op_writer to op with admin option;


grant select on v_$session to op with grant option ;
-- La clause with grant option est nécessaire pour que op puisse donner le droit select sur la vue au rôle op_user.

--creation du profil par default pour la creation des utilisateurs oracle (si crée depuis l'application)

create profile SECU_USER_TIME limit
  password_life_time unlimited
  password_reuse_max 1
  password_grace_time unlimited;

--- Create the user OPREPORTS

--- Create the user OPREPORTS

drop user OPREPORTS cascade;
create user OPREPORTS
  identified by cashflow
  default tablespace DATA
  temporary tablespace TEMP
  profile DEFAULT
  quota unlimited on data;

-- Grant/Revoke role privileges 
grant connect to OPREPORTS;
grant op_user to OPREPORTS with admin option;
grant op_writer to OPREPORTS with admin option;
grant resource to OPREPORTS;
GRANT DEBUG CONNECT SESSION to OPREPORTS;

-- Grant/Revoke system privileges 
grant create any procedure to OPREPORTS;
grant create any table to OPREPORTS;
grant create any view to OPREPORTS;
grant execute any procedure to OPREPORTS;
grant grant any privilege to OPREPORTS;
grant grant any role to OPREPORTS;
grant select any table to OPREPORTS;
grant unlimited tablespace to OPREPORTS;
grant select on dba_users to OPREPORTS;
grant create user to OPREPORTS;
grant alter user to OPREPORTS;
grant alter system to OP;
grant create user to OP;
grant alter user to OP;
grant alter system to OPREPORTS;
grant select on DBA_USERS to OPREPORTS;
--grant select on V_$SESSION to OPREPORTS with grant option;

-- Create the user OPPAYMENTS

drop user OPPAYMENTS cascade;
create user OPPAYMENTS
  identified by cashflow
  default tablespace DATA
  temporary tablespace TEMP
  profile DEFAULT
  quota unlimited on data;

-- Grant/Revoke role privileges 
grant connect to OPPAYMENTS;
grant op_user to OPPAYMENTS with admin option;
grant op_writer to OPPAYMENTS with admin option;
grant resource to OPPAYMENTS;
grant DEBUG connect session to OPPAYMENTS;

-- Grant/Revoke system privileges 
grant create any procedure to OPPAYMENTS;
grant create any table to OPPAYMENTS;
grant create any view to OPPAYMENTS;
grant execute any procedure to OPPAYMENTS;
grant grant any privilege to OPPAYMENTS;
grant grant any role to OPPAYMENTS;
grant select any table to OPPAYMENTS;
grant unlimited tablespace to OPPAYMENTS;
grant create user to OPPAYMENTS;
grant alter user to OPPAYMENTS;
grant alter system to OP;
grant create user to OP;
grant alter user to OP;
grant alter system to OPPAYMENTS;
grant select on DBA_USERS to OPPAYMENTS;

grant execute on DBMS_OBFUSCATION_TOOLKIT.MD5 to OP;
grant execute on DBMS_OBFUSCATION_TOOLKIT.DES3ENCRYPT to OP;





