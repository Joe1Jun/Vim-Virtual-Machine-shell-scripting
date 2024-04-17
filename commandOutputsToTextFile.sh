#!/bin/bash 

HISTFILE=~/.bash_history
set -o history

#create an array of commands.

commands_array=(
    "echo Hello World"
    "date"
    "hostname"
    "arch"
    "uname -a"
    "uptime"
    "whoami"
    "who"
    "last"
    "w"
    "top -n 1 -b"
    "history 50"
)
#clear file before writing to it

> "JoeJunker.txt"
#create for loop to iterate over the array and execute commands.

for commands in "${commands_array[@]}"; do
        #add echo commands for formatting 
      echo -e "\n" >> "JoeJunker.txt"
      echo "------------------------------- $commands command ---------------------------------" >> "JoeJunker.txt"
      echo -e "\n" >> "JoeJunker.txt"
      eval "$commands" >> "JoeJunker.txt" 
      echo -e "\n" >> "JoeJunker.txt"
done
