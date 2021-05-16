#!/usr/bin/env bash

echo "Building and activating environment"
#Environment name
VENVNAME=as4-cmk
#Create venv 
python -m venv $VENVNAME

# This makes sure that the bash script can be run from bash emulator on windows 
# Test if the folder bin in venvname exists
if [[ -f "/$VENVNAME/bin" ]]

    then
        source $VENVNAME/bin/activate
    
    else
        source $VENVNAME/Scripts/activate
fi


echo "Upgrading pip and installing dependencies"
#Upgrade pip
# I'm using python first, since my pc have problems upgrading pip locally if I don't do it.
python -m pip install --upgrade pip

# Test if requirements exist and install it
test -f requirements.txt && python -m pip install -r requirements.txt

#navigate to src folder
cd src

echo "running script"
#run script @$ means pass arguments from bash script to python script
python nn-mnist.py $@

echo "Deactivating and removing venv"
#deactivate environment
deactivate

#back to parent dir
cd ..

#remove venv
rm -rf $VENVNAME

echo "DONE!"