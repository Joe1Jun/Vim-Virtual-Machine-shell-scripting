#!/bin/bash

HISTFILE=~/.bash_history
set -o history

# create spaces and headings with echo.
# > at the beginning overwrites the file each time the shellscript is executed.
# >> appends everything afterwards to the new file content.
echo "------------- echo command -----------------" > JoeJunker.txt
# -e used so the string \n is interpreted as a new line command not a printable string.
echo -e "\n" >> JoeJunker.txt
echo Hello World >> JoeJunker.txt
echo -e "\n" >> JoeJunker.txt
echo "------------- date command -----------------" >> JoeJunker.txt
echo -e "\n" >> JoeJunker.txt
date >> JoeJunker.txt
echo -e "\n" >> JoeJunker.txt
echo "------------- hostname command -----------------" >> JoeJunker.txt
echo -e "\n" >> JoeJunker.txt
hostname >> JoeJunker.txt
echo -e "\n" >> JoeJunker.txt
echo "------------- arch command -----------------" >> JoeJunker.txt
echo -e "\n" >> JoeJunker.txt
arch >> JoeJunker.txt
echo -e "\n" >> JoeJunker.txt
echo "------------- uname command -----------------" >> JoeJunker.txt
echo -e "\n" >> JoeJunker.txt
uname -a >> JoeJunker.txt
echo -e "\n" >> JoeJunker.txt
echo "------------- uptime command -----------------" >> JoeJunker.txt
echo -e "\n" >> JoeJunker.txt
uptime >> JoeJunker.txt
echo -e "\n" >> JoeJunker.txt
echo "------------- whomai command -----------------" >> JoeJunker.txt
echo -e "\n" >> JoeJunker.txt
whoami >> JoeJunker.txt
echo -e "\n" >> JoeJunker.txt
echo "------------- who command -----------------" >> JoeJunker.txt
echo -e "\n" >> JoeJunker.txt
who >> JoeJunker.txt
echo -e "\n" >> JoeJunker.txt
echo "------------- w command -----------------" >> JoeJunker.txt
echo -e "\n" >> JoeJunker.txt
w >> JoeJunker.txt
echo -e "\n" >> JoeJunker.txt
echo "------------- top command -----------------" >> JoeJunker.txt
echo -e "\n" >> JoeJunker.txt
top -b -n1 >> JoeJunker.txt
echo -e "\n" >> JoeJunker.txt
echo "------------- history command -----------------" >> JoeJunker.txt
echo -e "\n" >> JoeJunker.txt
history 50  >> JoeJunker.txt
