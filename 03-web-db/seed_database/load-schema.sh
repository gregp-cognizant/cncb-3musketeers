#!/bin/bash

sleep 30;
mysql -h database -u ${MYSQL_ROOT_USER} -p${MYSQL_ROOT_PASSWORD} < ${PWD}/seed_database/mysqlsampledatabase.sql

exit 0