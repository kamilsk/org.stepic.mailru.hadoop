#!/usr/bin/env bash

LESSON=$1

IFS=":" read -a TEMP <<< "$2"
EXERCISE="${TEMP[0]}"
[[ ${#TEMP[@]} == 2 ]] && PREFIX="${TEMP[1]}." || PREFIX=""

VERBOSE=$3
TASK=$LESSON/$EXERCISE

if [ "$VERBOSE" == "--verbose" ]
then
  cat $TASK/${PREFIX}in.txt | python $TASK/run.py > >(tee -i /tmp/out.txt)
else
  cat $TASK/${PREFIX}in.txt | python $TASK/run.py > /tmp/out.txt
fi

DIFF=$(diff $TASK/${PREFIX}out.txt /tmp/out.txt)
if [ "$DIFF" != "" ]
then
  echo "- failure"
  sdiff $TASK/${PREFIX}out.txt /tmp/out.txt
else
  echo "- success"
fi
