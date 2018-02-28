#! /bin/bash

LOG="part2.log"

if [ "$1" != "" ] 
then
	LOG=$1"/"$LOG
fi

printf "COMP421 Project Deliverable #2 Part 2\n" | tee $LOG

#Run tables_dropall.sql and log output
DROP="sql/tables_dropall.sql"
printf " executing $DROP\n"
printf "\npsql cs421 < $DROP\n\n" >> $LOG
psql --echo-all cs421 < $DROP >> $LOG 2>&1

#Run tables_create.sql and log output
CREATE="sql/tables_create.sql"
printf " executing $CREATE\n"
printf "\npsql cs421 < $CREATE\n\n" >> $LOG
psql --echo-all cs421 < $CREATE >> $LOG 2>&1

#Run tables_print.sql and log output
PRINT="sql/tables_print.sql"
printf " executing $PRINT\n"
printf "\npsql cs421 < $PRINT\n\n" >> $LOG
psql --echo-all cs421 < $PRINT >> $LOG 2>&1