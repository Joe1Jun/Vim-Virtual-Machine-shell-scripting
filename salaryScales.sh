#!/bin/bash

echo " ----------------------------------------- "
echo " |          Salary Scales                | "
echo " ----------------------------------------- "
#each echo command promts the user to enter information.
echo  "Enter Employee ID :"
#read stores the input from the user into the variable declared after it
read  employeeID
echo  "Enter starting salary :"
read  startSalary
echo  "Enter number of points on salary scale :"
read  numPoints
echo  "Enter Salary increment :"
read  salaryIncrement





#use while true loop.This is an indefinite loop and will run until there is a break command 

while true; do 


     echo "Is the employee a manager? yes/no: "
     read isManager

     #if yes or no the program breaks out of the loop

     if [ $isManager = "yes" ] || [ $isManager = "no" ]; then
	    break
     else
         echo    "Invalid option. Please enter 'yes' or 'no'."  

     fi

done

# initialise current year variable as this year
# initialise months for manager and for employees where increments take place



currentYear=2024
employeeMonths="January"
managerMonth1="January"
managerMonth2="July"

#initialise salary varibale at the initial value of the user input

salary=$startSalary

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

	if [ $isManager = "yes" ]; then
		 

		   echo "| $managerMonth1 $currentYear     |  $i           | $salary      | $salaryIncrement       | "
                   echo "------------------------------------------------------------- "

		   #add salary increment after each month which is equal to a point in the salary scale.
		   ((salary += salaryIncrement))

		   #increment numPoints so that the salary points matches with the months

	           pointsCounter=$((i + 1))
                     		   
		   echo "| $managerMonth2 $currentYear        |  $pointsCounter           | $salary      | $salaryIncrement       | "
		   ((salary += salaryIncrement))
		   echo "------------------------------------------------------------- "

		   #increase current year by one at end of loop so the years for each month are the same for each iteration of the loop
                  
		   ((currentYear++))
		  
                   #increase i variable by one so that first month matches the salary point it is associated with

		   ((i++))

                   #if employee salary is incremented only once per year
	  
	  else 


                   ((salary += salaryIncrement))
		   echo "| $employeeMonths $((currentYear + i))     |  $i           | $salary      | $salaryIncrement       | "
		   echo "------------------------------------------------------------- "
          
          
	fi   
    

  done      


