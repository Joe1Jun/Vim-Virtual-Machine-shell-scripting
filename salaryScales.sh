#!/bin/bash


echo "Salary Scales"
#each echo command promts the user to enter information.
echo "Enter Employee ID"
#read stores the input from the user into the variable declared after it
read employeeID
echo "Enter starting salary"
read startSalary
echo "Enter number of points on salary scale"
read numPoints
echo "Enter Salary increment"
read salaryIncrement
echo "Is the employee a manager? (yes/no):"
read isManager

# initialise current year variable as this year

currentYear=2024
yearIncrement=1
employeeMonths="January"
managerMonth1="January"
managerMonth2="July"

#initialise salary varibale at the initial value of the user input

salary=$startSalary

echo " --------------------------------------- "
echo "| Salary Scale for employee $employeeID|"
echo " ---------------------------------------"
echo "-------------------------------------------------------------"
echo "|  Month and Year  | Salary Point | Salary     |  Increment |"
echo "-------------------------------------------------------------"

#use for loop to iterate through the number of points on the scale

for (( i=1; i<=$numPoints; i++ )); do

	#if manager the salaryIncrement*2 is stored in the salary varibale
        
	
	
	if [ "$isManager" = "yes" ]; then
		   echo "| $managerMonth1 $currentYear     |  $i           | $salary      | $salaryIncrement       | "
                   echo "------------------------------------------------------------- "

		   #add salary increment after each month which is equal to a point in the salary scale.
		   ((salary += salaryIncrement))

		   #increment numPoints so that the salary points matches with the months

	           pointsCounter=$((i + 1))
                     		   
		  echo "| $managerMonth2 $currentYear        |  $pointsCounter           | $salary      | $salaryIncrement       | "
		  ((salary += salaryIncrement))
		  echo "------------------------------------------------------------- "

		  #increase current year by on at end of loop so the years for each month are the same for each iteration of the loop
                  
		  ((currentYear++))
		  
                  #increase i variable by one so that first month matches the salary point its associated with

		  ((i++))

                  #otherwise the salary is incremented by the salary once
	else


                  ((salary += salaryIncrement))
		  echo "| $employeeMonths $((currentYear + i))    | Salary Point $i    | $salary  | $salaryIncrement       | "
		  echo "------------------------------------------------------------ "
            
	fi   
    

done
      


