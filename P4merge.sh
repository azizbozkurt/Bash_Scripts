#!/bin/bash

#Go to directory for P4
cd /mnt/c/Program\ Files/Perforce/

#Declare variable and iniate it - Get the no diff output message
STR=$(p4.exe diff2 -qOd //vsd-ptcs/ems/8x/dev_br/EMS8X-3183_emd1/... //vsd-ptcs/ems/8x/dev_br/EMS8X-3183_emd1/...)

#Check diff and assign the output value to STR2
STR1=$(p4.exe diff2 -qOd -b EMS8X-3183_emd1)

#echo $STR
#echo $STR1

if [ "$STR" == "$STR1" ]
then
   echo The Branch is already UP-TO Date!
else
   echo New Changes is Available... Iniatiating Merge...
   read -p "Do you want to start the Merge Procedure? [y/N] " response
   response=${response,,}
   if [[ "$response" =~ ^(yes|y)$ ]]
   then
   p4.exe integ -b EMS8X-3183_emd1
   p4.exe resolve -as
   else
   echo Merge procedure aborted
   fi
fi

