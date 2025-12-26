create tablespace DATA datafile '/opt/oracle/oradata/CMEDUTF8/data01.dbf'   size 30G   autoextend on   next 1m   extent management local;
ALTER TABLESPACE DATA ADD DATAFILE '/opt/oracle/oradata/CMEDUTF8/data02.dbf' SIZE 10G;
ALTER TABLESPACE DATA ADD DATAFILE '/opt/oracle/oradata/CMEDUTF8/data03.dbf' SIZE 10G;