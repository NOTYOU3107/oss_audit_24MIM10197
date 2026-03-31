#!/bin/bash
# Script 2: FOSS Package Inspector

PACKAGE="git"

if dpkg -l | grep -q $PACKAGE; then
    echo "$PACKAGE is installed."

    VERSION=$(git --version)
    echo "Version: $VERSION"
else
    echo "$PACKAGE is NOT installed."
fi

case $PACKAGE in
    git)
        echo "Git is a distributed version control system." ;;
    apache2)
        echo "Apache is a web server." ;;
    mysql)
        echo "MySQL is a database system." ;;
    *)
        echo "No description available." ;;
esac