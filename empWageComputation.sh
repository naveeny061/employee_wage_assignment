#!/bin/bash -x
echo "Welcome to Employee Wage Computation Program"
attendence=$((RANDOM%2))
if [ $attendence -eq 0 ]
then
echo "employee present"
else
echo "employee absent"
fi
