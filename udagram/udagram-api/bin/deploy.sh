eb list
eb use cicd-udacity

eb setenv AWS_BUCKET=$AWS_BUCKET AWS_PROFILE=$AWS_PROFILE AWS_REGION=$AWS_REGION 
eb setenv JWT_SECRET=$JWT_SECRET PORT=$PORT URL=$URL
eb setenv POSTGRES_DB=$POSTGRES_DB POSTGRES_HOST=$POSTGRES_HOST POSTGRES_PASSWORD=$POSTGRES_PASSWORD POSTGRES_USERNAME=$POSTGRES_USERNAME

eb deploy