#!/usr/bin/env sh

printf "\n\n"
echo "# Open Policy Agent"
/opa version
printf "\n\n"

ls -l $2/../

/opa "$1" "$2" "$3"
