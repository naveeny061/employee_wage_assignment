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
partTimeHours=4
if [ $attendence -eq 0 ]
then
read -p "enter 1 for full day and 2 for part time" choise
case $choise in
1)dailyEmployeeWage=$((wagePerHour*fullDayHour))
echo "daily employee wage =" $dailyEmployeeWage;;
2)dailyEmployeeWagePartTime=$((wagePerHour*partTimeHours))
echo "part time daily employee wage =" $dailyEmployeeWagePartTime;;
esac
else 
echo "no wage "
fi
