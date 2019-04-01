#!/bin/bash

#------------------------------------------------------------------------------
# Run the script from the parent directory of "src" containing the source code
#------------------------------------------------------------------------------

#Create the bin folder
mkdir bin

#Compile the source code in order to generate class files
javac -d bin src/**/*.java

#Create manifest file
echo Manifest-Version: 1.0 | cat >> MANIFEST.MF
echo Main-Class: server.MultiServer | cat >> MANIFEST.MF

#Create a new jar archive of the class files and use our own manifest file instead
jar -cvfm pokerApp.jar MANIFEST.MF -C bin/ .

rm -r bin
rm MANIFEST.MF

echo -e ----------------------------------------------------------------------
printf "Build Complete!\n"
echo ----------------------------------------------------------------------
echo -e
echo -e ----------------------------------------------------------------------
printf "Executing the program\n"
echo ----------------------------------------------------------------------

#Run
java -jar pokerApp.jar
