#!/bin/bash

#Redirects bash_historyfile inside the .sh file
#Include at top of script to enable the history command

HISTFILE=~/.bash_history
set -o history
echo Hello World
date
hostname
arch
uname -a
uptime
whoami
who
w

#-b puts top in batch mode which produces output suitable for saving to a file rather than displaying interactively
#-n1 limit the iterations of top to the specified number
top -b -n1

history
 
