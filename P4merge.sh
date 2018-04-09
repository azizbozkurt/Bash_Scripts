#!/bin/bash

#Go to directory for P4
cd /mnt/c/Program\ Files/Perforce/

#Declare variable and iniate it
STR=$(p4.exe diff2 -Od //vsd-ptcs/ems/8x/dev_br/EMSUpgradeToDIMA2_br/... //vsd-ptcs/ems/8x/dev_br/EMSUpgradeToDIMA2_br/...)

#Check diff and assign the output value to STR2
STR1=$(p4.exe diff2 -Od //vsd-ptcs/ems/8x/dev_br/EMSUpgradeToDIMA2_br/... //vsd-ptcs/ems/8x/dev_br/NextDiagnosticFramework/...)

#echo $STR

#echo $STR1

if [ "$STR" == "$STR1" ]
then
   echo BRANCH IS ALREADY UP-TO DATE!!!
else
   echo NEW CHANGES AVAILABLE... STARTING MERGE!!!
   p4.exe -c DIMA2_dev_br integrate //vsd-ptcs/ems/8x/dev_br/NextDiagnosticFramework/... //vsd-ptcs/ems/8x/dev_br/EMSUpgradeToDIMA2_br/...
   #p4.exe -c DIMA2_dev_br submit
fi

