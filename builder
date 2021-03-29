#!/bin/bash

source .env

if [ "$1" == "up" ]; then
    terraform init

    terraform plan

    terraform apply
elif [ "$1" == "plan" ]; then
    terraform init

    terraform plan
elif [ "$1" == "down" ]; then
    terraform destroy
else
    echo "Command not found"
fi