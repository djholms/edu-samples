#!/bin/bash

# files="ls /usr/bin"
DIR="/usr/bin/"
for file in $(ls $DIR)
do
  if
    strings $DIR$file 2> /dev/null | grep -q "unable to fork"   
      then
        echo $file
  fi
done


