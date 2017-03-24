#! /bin/bash

# Move to Directory
cd /Users/Shared/

# Basic File Data
datecode=$(date +%F-%T)

# Filename
fname=$($hname-Information.txt)

# Prepare File
echo "Prepared: $datecode" > /Users/Shared/$fname

# Computer Serial Number
sn=$(system_profiler | grep "Serial Number (system)" | awk '{print $4}')

echo "Serial Number" >> /Users/Shared/$fname

echo "Serial Number Is: $sn" >> /Users/Shared/$fname
echo "" >> /Users/Shared/$fname

# Computer Host Name
hname=$(hostname -s)

echo "Host Name" >> /Users/Shared/$fname

echo "Host Name is: $hname" >> /Users/Shared/$fname
echo "" >> /Users/Shared/$fname

echo "Network Information" >> /Users/Shared/$fname
currentip=$(ifconfig | grep inet | grep -v inet6 | grep -v 127.0.0.1 | awk '{print $2}')

echo "Current IP Address/es Are: $currentip" >> /Users/Shared/$fname
echo "" >> /Users/Shared/$fname

# Current User
$uname=$(whoami)

echo "Login Information" >> /Users/Shared/$fname

echo "Current logged in user is: $uname" >> /Users/Shared/$fname
echo "" >> /Users/Shared/$fname

echo "Last History 10 Lines" >> /Users/Shared/$fname

lhist=$(last -n 10)

echo $lhist >>  /Users/Shared/$fname
echo "" >> /Users/Shared/$fname


# Last Shutdown Cause
scause=$(ioreg -c AppleSMC | grep Shutdown | awk '{print $6}' | tr -d '"')
assess=$(if [ $scasue -le 0 ]; then echo "POSSIBLE ISSUE DETECTED"; else echo "NO ISSUES"; fi;)

echo "Shutdown Cause" >>  /Users/Shared/$fname

echo "Last shutdown casue was: $scause" >>  /Users/Shared/$fname
echo "Shutdown cause assessment is: $assess" >> /Users/Shared/$fname
echo "" >> /Users/Shared/$fname







exit
