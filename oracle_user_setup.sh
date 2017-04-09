/usr/sbin/groupadd -g 501 oinstall
/usr/sbin/groupadd -g 502 dba
/usr/sbin/groupadd -g 503 oper
/usr/sbin/useradd -u 502 -g oinstall -G dba,oper oracle
passwd oracle
