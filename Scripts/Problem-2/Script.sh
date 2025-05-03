#!/bin/bash

# Prompt the user to enter the package name
read -p "Enter your package name: " pkg

# Check if the package is installed
if rpm -q "$pkg" > /dev/null 2>&1;
then
    echo "Your package '$pkg' is Already Installed."
    else
        echo "Your package '$pkg' Is not Installed.!! Now it started to Installing......"
fi

#Get installation of the package
if command -v yum > /dev/null 2>&1;
then
    yum insatll -y $pkg
    exit 1
fi
