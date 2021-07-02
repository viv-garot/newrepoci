#!/usr/bin/env bash

# test that bye.sh outputs bye

OUT=$(bash ./bye.sh)

if [ ${OUT} = "bye" ] ; then
 echo "Output is bye"
 exit 0
else
 echo "Output is not bye"
 echo ${OUT}
 exit 1
fi
