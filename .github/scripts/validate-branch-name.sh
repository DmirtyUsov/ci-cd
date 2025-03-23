#!/usr/bin/env bash

BRANCH_NAME=${1:-$(git rev-parse --abbrev-ref HEAD)}
REGEX_PATTERN= '^feature\/.+$'

if [["$BRANCH_NAME" =~ $REGEX_PATTERN]]; then
  echo "Branch name '$BRANCH_NAME' is valid."
  exit 0
else
  echo "Branch name '$BRANCH_NAME' is invalid. It must match the pattern $REGEX_PATTERN"
  exit 1
fi