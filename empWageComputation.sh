#!/bin/bash -x
echo "Welcome to Employee Wage Computation Program"
wagePerHour=20
fullDayHour=8
partTimeHours=4
totalDays=0
workingHours=0
totalWage=0
workHours()
{
read -p"enter 1 for full day and 2 for part time" choise
while [[ $totalDays -lt 20 && $workingHours -lt 100 ]]
do
case $choise in
1)dailyEmployeeWage=$((wagePerHour*fullDayHour))
totalWage=$((totalWage+dailyEmployeeWage))
workingHours=$((workingHours+8));;
2)dailyEmployeeWagePartTime=$((wagePerHour*partTimeHours))
totalWage=$((totalWage+dailyEmployeeWagePartTime))
workingHours=$((workingHours+4));;
esac
((totalDays++))
done
echo "totalWage=" $totalWage
echo "total hours=" $workingHours
}
workHours
