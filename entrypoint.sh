#!/bin/bash

printf "\n\n"
echo "# Open Policy Agent"
/opa version
printf "\n\n"

opa "$1" "$2" "$3"
