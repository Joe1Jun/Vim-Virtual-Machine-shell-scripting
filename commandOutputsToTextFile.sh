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


#create for loop to iterate over the array and execute commands.

for commands in "${commands_array[@]}"; do

	eval "$commands"

done
