#! /bin/bash

LOG="part4.log"

if [ "$1" != "" ] 
then
	LOG=$1"/"$LOG
fi

printf "COMP421 Project Deliverable #2 Part 4\n" | tee $LOG

#Run tables_dropall.sql 
/bin/bash execute_sql.sh "sql/tables_dropall.sql" $LOG

#Run tables_create.sql 
/bin/bash execute_sql.sh "sql/tables_create.sql" $LOG

#Run insert sql files
printf "\nInserting data:\n" >> $LOG
INSERT_ORDER=( wall creator usert page submission post commentt eventt notification page_follower eventt_subscription submission_like feed_view usert_friend )
for i in "${INSERT_ORDER[@]}"
do
	/bin/bash execute_sql.sh "sql/insert_"$i".sql" $LOG
done