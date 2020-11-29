#!/bin/bash

MASTER_STATUS=`mysql -u root -p111 -h $MASTER_IP -e "SHOW MASTER STATUS"`
CURRENT_LOG=`echo $MASTER_STATUS | awk '{print $6}'`
CURRENT_POS=`echo $MASTER_STATUS | awk '{print $7}'`

mysql -u root -p111 -e "CHANGE MASTER TO MASTER_HOST='$MASTER_IP',MASTER_USER='mydb_slave_user',MASTER_PASSWORD='mydb_slave_pwd',MASTER_LOG_FILE='$CURRENT_LOG',MASTER_LOG_POS=$CURRENT_POS;"
mysql -u root -p111 -e "START SLAVE;"