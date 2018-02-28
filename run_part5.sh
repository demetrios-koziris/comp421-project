#! /bin/bash

LOG="part5.log"

if [ "$1" != "" ] 
then
	LOG=$1"/"$LOG
fi

printf "COMP421 Project Deliverable #2 Part 5\n" | tee $LOG

#Run part5_queries.sql and log output
/bin/bash execute_sql.sh "sql/part5_queries.sql" $LOG "--echo-all"
