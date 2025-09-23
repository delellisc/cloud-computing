#!/bin/bash

sum=1
while [ $sum -le 30 ]
do
    echo "$sum"
    sum=$((sum+1))
    sleep 10
done