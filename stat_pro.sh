#!/bin/sh  
#MySQL_HOME=/usr/local/mysql/bin  
#mysql=$MySQL_HOME/mysql  
PATH=.:/usr/local/mysql/bin
export PATH
hostname=$1
port=$2
database=$3

username=ca  
password=ca_cloutech_2016
sql="CALL PROC_STAT_IMPSYS(ADDDATE(CURDATE(),INTERVAL -1 DAY),CURDATE());"

mysql -h$hostname -P$port -u$username -p$password $database -e"$sql" >/dev/null &