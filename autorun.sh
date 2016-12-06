#!/bin/bash

### Set initial time of file
LTIME=`stat -c %Z /abc/enter.txt`

while true    
do
   ATIME=`stat -c %Z /abc/enter.txt`

   if [[ "$ATIME" != "$LTIME" ]]
   then    
       echo "RUN COMMNAD"
       LTIME=$ATIME
   fi
   sleep 5
done
