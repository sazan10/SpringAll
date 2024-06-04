#!/bin/bash

# Find all directories containing a pom.xml file
PROJECT_DIRS=$(find . -type f -name 'pom.xml' -exec dirname {} \;)

# Iterate over each project directory and run Maven commands
for PROJECT_DIR in $PROJECT_DIRS; do
    echo "Compiling project in directory: $PROJECT_DIR"
    cd "$PROJECT_DIR"
    mvn clean install -DskipTests
    cd -
done
