#! /bin/bash

LOG="part2.log"

if [ "$1" != "" ] 
then
	LOG=$1"/"$LOG
fi

echo "COMP421 Project Assignment 2 Part 2"
echo "COMP421 Project Assignment 2 Part 2" > $LOG

#Run part2_tables_dropall.sql and log output
DROP="part2_tables_dropall.sql"
echo "Running $DROP"
echo >> $LOG
echo "psql cs421 < $DROP" >> $LOG
echo >> $LOG
psql --echo-all cs421 < $DROP >> $LOG 2>&1

#Run part2_tables_create.sql and log output
CREATE="part2_tables_create.sql"
echo "Running $CREATE"
echo >> $LOG
echo "psql cs421 < $CREATE" >> $LOG
echo >> $LOG
psql --echo-all cs421 < $CREATE >> $LOG 2>&1

#Run part2_tables_print.sql and log output
PRINT="part2_tables_print.sql"
echo "Running $PRINT"
echo >> $LOG
echo "psql cs421 < $PRINT" >> $LOG
echo >> $LOG
psql --echo-all cs421 < $PRINT >> $LOG 2>&1