#! /bin/bash
# run java
echo Starting the application...
java -Dspring.profiles.active=prod -Dmode=${MODE} -Damazon.dynamodb.endpoint=${AMAZON_DYNAMO_DB_ENDPOINT} -XX:CRaCCheckpointTo=/opt/crac-files -jar /${SRVC_JAR_FILE_NAME}
