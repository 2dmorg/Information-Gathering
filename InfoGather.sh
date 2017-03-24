#! /bin/bash

# Move to Directory
cd /Users/Shared/

# Basic File Data
datecode=$(date +%F-%T)

# Filename
fname=$(

# Prepare File
echo "Prepared: $datecode" > 

# Computer Host Name


# Current User
$uname=$(whoami)

echo "Login Information" >>

echo "Current logged in user is: $uname" >>
echo "" >>

echo "Last History 10 Lines" >>

lhist=$(last -n 10)

echo $lhist >> 
echo "" >>


# Last Shutdown Cause
scause=$(ioreg -c AppleSMC | grep Shutdown | awk '{print $6}' | tr -d '"')
assess=$(if [ $scasue -le 0 ]; then echo "POSSIBLE ISSUE DETECTED"; else echo "NO ISSUES"; fi;)

echo "Shutdown Cause" >> 

echo "Last shutdown casue was: $scause" >> 
echo "Shutdown cause assessment is: $assess" >>
echo "" >>


system_profiler | grep "Serial Number (system)" | awk '{print $4}'




exit
