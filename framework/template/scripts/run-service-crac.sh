#! /bin/bash
# run java
echo 'Start time: '$(date +"%T.%3N")
java -XX:CRaCRestoreFrom=${CRAC_CHECKPOINT_PATH} -Dmode=${MODE} -Damazon.dynamodb.endpoint=${AMAZON_DYNAMO_DB_ENDPOINT} -Daws.webIdentityTokenFile="${AWS_WEB_IDENTITY_TOKEN_FILE}" -Daws.roleArn="${AWS_ROLE_ARN}" 

# the code below is to keep the container running if the java process failed 
echo Executing an infinite loop to keep the container running...
while true; do sleep 1; done