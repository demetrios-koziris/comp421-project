#! /bin/bash

LOG="part6.log"

if [ "$1" != "" ] 
then
	LOG=$1"/"$LOG
fi

printf "COMP421 Project Deliverable #2 Part 6\n" | tee $LOG

#Run part6_mods.sql and log output
/bin/bash execute_sql.sh "sql/part6_mods.sql" $LOG "--echo-all"
