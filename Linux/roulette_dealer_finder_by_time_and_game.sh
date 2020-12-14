#!/bin/bash

cat $1_Dealer_schedule | awk -F" " '{print $1,$2,"$3","$6"}' | grep "$2"
