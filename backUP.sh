#!/bin/bash

#Copy operation for backup
cp -r /home/Aziz /mnt/c/Bash_backup/

#Go to the folder for backups
cd /mnt/c/Bash_backup/

#Zip and rename the backup as the current date
zip -r $(date +%d-%m-%Y)_backup Aziz

#Remove the intermediate folder
rm -r Aziz




