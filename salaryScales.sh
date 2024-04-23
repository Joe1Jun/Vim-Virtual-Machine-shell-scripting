#!/bin/bash

echo " ----------------------------------------- "
echo " |          Salary Scales                | "
echo " ----------------------------------------- "
#each echo command promts the user to enter information.
echo "Enter Employee ID :"
#read stores the input from the user into the variable declared after it
read employeeID
echo "Enter starting salary :"
read startSalary
echo "Enter number of points on salary scale :"
read numPoints
echo "Enter Salary increment :"
read salaryIncrement
echo "Is the employee a manager? (yes/no):"
read isManager

# initialise current year variable as this year
# initialise months for manager and for employees where increments take place

currentYear=2024
employeeMonths="January"
managerMonth1="January"
managerMonth2="July"

#initialise salary varibale at the initial value of the user input

salary=$startSalary

#print headings for for loop

echo " --------------------------------------- "
echo "| Salary Scale for employee $employeeID        |"
echo " ---------------------------------------"
echo "-------------------------------------------------------------"
echo "|  Month and Year  | Salary Point | Salary     |  Increment |"
echo "-------------------------------------------------------------"


#use for loop to iterate through the number of points on the scale



for (( i=1; i<=$numPoints; i++ )); do

	
        
	
	#if manager salary is incremented twice per year in January and July 
	#if statement is modified to output this

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
	 elif [ "$isManager" = "no" ];then


                  ((salary += salaryIncrement))
		  echo "| $employeeMonths $((currentYear + i))     |  $i           | $salary      | $salaryIncrement       | "
		  echo "------------------------------------------------------------- "
          
          #adding an option if invalid selction is made more manager

	  else 


		  echo      "Invalid option please type either yes or no!"

                            echo "Is the employee a manager? (yes/no):"
                            read isManager
			    #reset loop so they full number of iterations runs
			    (( i = 0))
	fi   
    

  done      


