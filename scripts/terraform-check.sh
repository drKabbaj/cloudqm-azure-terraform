#!/bin/bash

set -e

if [ -z "$1" ]; then
    echo "ERROR: Project name is required."
    exit 1
fi

PROJECT_NAME=$1

run_terraform_checks() {
    terraform fmt -check

    if terraform validate; then
        echo "SUCCESS"
    else
        echo "FAILED"
        exit 1
    fi
}

echo "Checking project: $PROJECT_NAME"

run_terraform_checks

echo "$PROJECT_NAME CI Checks completed successfully."