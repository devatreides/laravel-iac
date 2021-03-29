#!/bin/bash

source .env

if [ "$1" == "up" ]; then
    terraform init

    terraform plan

    terraform apply -auto-approve
elif [ "$1" == "plan" ]; then
    terraform init

    terraform plan
elif [ "$1" == "down" ]; then
    terraform destroy -auto-approve
else
    echo "Command not found"
fi