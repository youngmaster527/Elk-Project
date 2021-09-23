#!/bin/bash



if [ "$1" = "0315_Dealer_schedule" ]
then
    grep "05:00:00 AM" $1 | awk -v date=$1 '{print date , $1, $2, $5, $6}' >> Dealers_working_during_losses
    grep "08:00:00 AM" $1 | awk -v date=$1 '{print date , $1, $2, $5, $6}' >> Dealers_working_during_losses
    grep "02:00:00 PM" $1 | awk -v date=$1 '{print date , $1, $2, $5, $6}' >> Dealers_working_during_losses
else

grep "05:00:00 AM" $1 | awk -v date=$1 '{print date , $1, $2, $5, $6}' >> Dealers_working_during_losses
grep "08:00:00 AM" $1 | awk -v date=$1 '{print date , $1, $2, $5, $6}' >> Dealers_working_during_losses
grep "02:00:00 PM" $1 | awk -v date=$1 '{print date , $1, $2, $5, $6}' >> Dealers_working_during_losses
grep "08:00:00 PM" $1 | awk -v date=$1 '{print date , $1, $2, $5, $6}' >> Dealers_working_during_losses
grep "11:00:00 PM" $1 | awk -v date=$1 '{print date , $1, $2, $5, $6}' >> Dealers_working_during_losses


fi
