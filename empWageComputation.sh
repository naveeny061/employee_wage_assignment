#!/bin/bash -x
echo "Welcome to Employee Wage Computation Program"
wagePerHour=20
fullDayHour=8
partTimeHours=4
totalDays=1
workingHours=0
totalWage=0
workHours()
{
read -p"enter 1 for full day and 2 for part time" choise
while [[ $totalDays -le 20 && $workingHours -lt 100 ]]
do
case $choise in
1)dailyEmployeeWage=$((wagePerHour*fullDayHour))
totalWage=$((totalWage+dailyEmployeeWage))
workingHours=$((workingHours+8))
echo "day no.=" $totalDays
echo "daily wage=" $dailyEmployeeWage
echo "wage till now=" $totalWage;;
2)dailyEmployeeWage=$((wagePerHour*partTimeHours))
totalWage=$((totalWage+dailyEmployeeWage))
workingHours=$((workingHours+4))
echo "day no.=" $totalDays
echo "daily wage=" $dailyEmployeeWage
echo "wage till now=" $totalWage;;
esac
((totalDays++))
done

}
workHours
