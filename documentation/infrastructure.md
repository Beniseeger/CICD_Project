# Infrastructure

The architecture of the application looks as follows

![infrastructure](../screenshots/Architecture.png)

In the AWS console itself, the components where used:

-   RDS (Relational Database Service): RDS provides databases as a service. In this application RDS is used for a postgres database. This component is used by the api service to store data persistently.
-   Elastic beanstalk: Elastic beanstalk is a service which sets up all services required for your code to run. In this application, elastic beanstalk is used for the api backend. The code from the api backend is uploaded to eb. EB sets up all required components in aws to expose our api service. The exposed api is then used by our frontend. The api service is based on node.js. The api backend can be called on the following url: cicd-udacity.eba-225pgm2p.us-east-1.elasticbeanstalk.com
-   S3: S3 is a datastore service. In this application S3 is used to store our frontend files like the index.html which can be called by the enduser. The whole S3 bucket is exposed to the internet, so an enduser can access these files. The S3 bucket uses calls the api in the backend for additional data. The frontend is based on angular and can be called here: cicd-udacity.c9mdowameroo.us-east-1.rds.amazonaws.com. The home url is accessable at cicd-udacity.c9mdowameroo.us-east-1.rds.amazonaws.com/home

## Update

A new update is pushed to these systems, when a change is pushed to the cicd pipeline.
After the hold task has been approved, the app is deployed to the components.
