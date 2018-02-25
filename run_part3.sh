#! /bin/bash

LOG="part3.log"

if [ "$1" != "" ] 
then
	LOG=$1"/"$LOG
fi

echo "COMP421 Project Assignment 2 Part 3"
echo "COMP421 Project Assignment 2 Part 3" > $LOG

#Run part3_insert.sql and log output
INSERT="part3_insert.sql"
echo "Running $INSERT"
echo >> $LOG
echo "psql cs421 < $INSERT" >> $LOG
echo >> $LOG
psql cs421 --echo-all < $INSERT >> $LOG 2>&1