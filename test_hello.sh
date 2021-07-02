#!/usr/bin/env bash

# test that hello.sh outputs hello

OUT=$(bash ./hello.sh)

if [ ${OUT} = "hello" ] ; then
 echo "Output is hello"
 exit 0
else
 echo "Output is not hello, received :"
 echo ${OUT}
 exit 1
fi
