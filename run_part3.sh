#! /bin/bash

LOG="part3.log"

if [ "$1" != "" ] 
then
	LOG=$1"/"$LOG
fi

printf "COMP421 Project Deliverable #2 Part 3\n" | tee $LOG

#Run part3_insert.sql and log output
# INSERT="sql/part3_insert.sql"
# printf " executing $INSERT\n"
# printf "\npsql cs421 < $INSERT\n\n" >> $LOG
# psql cs421 --echo-all < $INSERT >> $LOG 2>&1
/bin/bash execute_sql.sh "sql/part3_insert.sql" $LOG "--echo-all"
