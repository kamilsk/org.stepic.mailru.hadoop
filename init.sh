#!/usr/bin/env bash

LESSON=$1
EXERCISE=$2
TASK=$LESSON/$EXERCISE

mkdir -p $TASK
cat >$TASK/solution.py <<EOL
import sys


def iterator():
    for line in sys.stdin:
        line = line.strip()
        if line and not line[0] == '#':
            yield line


def task():
    for line in iterator():
        print(line)


if __name__ == '__main__':
    task()
EOL
cat >$TASK/in.txt <<EOL
# Comments can also be here

EOL
touch $TASK/out.txt
