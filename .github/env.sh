#!/bin/bash

function setEnv {
    SSM_PARAMETER_NAME=$1
    ENV_VARIABLE_NAME=$2
    
    PARAMETER_VALUE=$(aws ssm get-parameter --with-decryption --name "$SSM_PARAMETER_NAME" --query "Parameter.Value" --output text)
    echo "::add-mask::$PARAMETER_VALUE"
    echo "$ENV_VARIABLE_NAME=$PARAMETER_VALUE" >> $GITHUB_ENV
}

setEnv '/dev/crater/DB_USERNAME' 'DB_USERNAME'

