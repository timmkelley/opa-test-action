#!/bin/bash

printf "\n\n"
echo "# Open Policy Agent"
/opa version
printf "\n\n"
echo "Dir:"
ls -l
printf "\n\n"

IFS=';'
mapfile -t lines < <(echo "$INPUT_TESTS" | grep -v "^$")

e_code=0
for line in "${lines[@]}"; do
  read -r -a args <<< "$line"
  cmd="/opa $INPUT_CMD ${args[@]} $INPUT_OPTIONS"
  echo " 🚀 Running: $cmd"
  printf "\n"
  eval "$cmd" || e_code=1
  printf "\n\n"
done

exit $e_code
