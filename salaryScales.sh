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

#initialise salary varibale at the initial value of the user input

salary=$startSalary

echo "Salary Scale for employee $employeeID"

#use for loop to iterate through the number of points on the scale

for (( i=0; i<=$numPoints; i++ )); do

	#if manager the salaryIncrement*2 is stored in the salary varibale
        
       	if [ "$isManager" = "yes" ]; then
       
     		((salary += salaryIncrement * 2))
     
       #otherwise the salary is incremented by the salary once
	else
                  ((salary += salaryIncrement))
    fi
   
    #print the current year incremented each time by the loop
    #print the new value stored in varibale salary after each loop

    echo "|$((currentYear + i))          $salary|"
    echo "--------------------------------------- "
   
done
      


