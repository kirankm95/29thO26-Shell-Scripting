#!/bin/bash

NUM=$1

if [ $NUM -gt 100 ]
then
    echo "given number $NUM is grater than 100"
else
    echo "given number $NUM is less than or equal to 100"
fi