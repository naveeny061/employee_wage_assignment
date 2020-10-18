#!/bin/bash -x
echo "Welcome to Employee Wage Computation Program"
attendence=$((RANDOM%2))
if [ $attendence -eq 0 ]
then
echo "employee present"
else
echo "employee absent"
fi
wagePerHour=20
fullDayHour=8
dailyEmployeeWage=$((wagePerHour*fullDayHour))
echo "daily employee wage =" $dailyEmployeeWage
partTimeHours=4
dailyEmployeeWagePartTime=$((wagePerHour*partTimeHours))
echo "part time daily employee wage =" $dailyEmployeeWagePartTime
