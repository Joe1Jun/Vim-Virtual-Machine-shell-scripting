#!/bin/bash

HISTFILE=~/.bash_history
set -o history

# > writes to file >> appends to existing file
echo Hello World >> JoeJunker.txt
date >> JoeJunker.txt
hostname >> JoeJunker.txt
arch >> JoeJunker.txt
uname -a >> JoeJunker.txt
uptime >> JoeJunker.txt
whoami >> JoeJunker.txt
who >> JoeJunker.txt
w >> JoeJunker.txt
top -b -n1 >> JoeJunker.txt
history >> JoeJunker.txt
