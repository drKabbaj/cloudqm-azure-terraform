#!/bin/bash

echo "Starting Terraform checks..."

terraform fmt -check
terraform validate

echo "Terraform checks completed successfully."