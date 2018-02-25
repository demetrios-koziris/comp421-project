#! /bin/bash


LOGDIR=assignment2_logs_$(date +%Y-%m-%d_%H-%M-%S)

mkdir $LOGDIR 

/bin/bash "run_part2.sh" $LOGDIR
/bin/bash "run_part3.sh" $LOGDIR


echo "Output logged to $LOGDIR"
