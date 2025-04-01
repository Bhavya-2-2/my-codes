#step1: Inputs

read -p "Enter total work of the team per day: " total_work
read -p "Enter work capacity of one employee:  " work_per_employee

# calculate required employees

employees_needed=$((total_work / work_per_employees))
if((total_work % work_per_employee != 0 ));then
   employees_needed=$((employees_needed + 1))
fi
#display result
echo "Number of employees needed: $employees_needed"
