# Hosting a Full-Stack Application

# Introduction

In this project, the udagram application was used to build a application in aws with circle ci as cicd engine.
The application build can be visited here: http://cicd-frontend-s3bucket.s3-website-us-east-1.amazonaws.com/
The backend api can be visited here: cicd-udacity.eba-225pgm2p.us-east-1.elasticbeanstalk.com

# Circle CI builds

In circle ci, the workflow consits of a build job, followd by a hold job which separates the build from the deployment job.

The last circle ci build looked as follows (Hold task was already approved):

## Circle CI last depoyment

![whole deployment](./screenshots/CICD/CICD%20Last%20Deployment.png)

## Circle CI deploy job

Steps of deployment job
![cicd deploy config](./screenshots/CICD/CICD%20Deploy%20Job.png)

Header of deployment job
![cicd deploy header](./screenshots/CICD/CICD%20Deploy%20Job%20Header.png)

## Circle CI build job

Steps of build job
![CICD Build job](./screenshots/CICD/CICD%20Build%20Job.png)

Header of deployment job
![CICD job header](./screenshots/CICD/CICD%20Deploy%20Job%20Header.png)

Prove that circle ci can access aws components
![CICD Component](./screenshots/CICD/CICD%20has%20access%20to%20AWS%20Components.png)

# AWS Services

For this project, the following services where used:

-   RDS (Database)
-   Elastic beanstalk (Backend host)
-   S3 (Static website)

The configurations of each service looks as follows:

## RDS

As database, a postgres database was used. The security group for the database was made public for inbound traffic, so the backend may access the db.

![RDS config](./screenshots/RDS/RDS%20Configuration.png)

With a configured security group:

![RDS Security group](./screenshots/RDS/RDS%20Security%20Group.png)

## Elastic Beanstalk

For elastic beanstalk, node.js was used as application type.

![EB Config](./screenshots/Elastic%20Beanstalk/ElasticBeanstalkHealth.png)

Environment variables
![EB Environment variables](./screenshots/Elastic%20Beanstalk/Elastic%20Beanstalk%20Variables.png)

## S3

The S3 bucket was made accessable for everyone through bucket permissions. The bucket is used to store a static website.

![s3 configurations](./screenshots/S3/S3%20Configuration.png)

Permission management S3

![s3 permissions](./screenshots/S3/S3%20Permissions.png)

Static website config

![static website](./screenshots/S3/S3%20Static%20website.png)

# Architecture

The architecture of the application can be seen here: [Architecture docu](./documentation/infrastructure.md)

# Secrets

All secrets are set via environment varibles. The variables are set in elastic beanstalk and circle ci.
A screenshot of the set variables can be seen above and in the folder pipline.

# Dependencies

The dependency documentation can be seen in the folder [Dependency docu](./documentation/dependencies.md)

# Pipeline process

The pipeline documentation can be seen in the folder [Pipeline docu](./documentation/pipeline_process.md)

---

### **You can use you own project completed in previous courses or use the provided Udagram app for completing this final project.**

---

In this project you will learn how to take a newly developed Full-Stack application built for a retailer and deploy it to a cloud service provider so that it is available to customers. You will use the aws console to start and configure the services the application needs such as a database to store product information and a web server allowing the site to be discovered by potential customers. You will modify your package.json scripts and replace hard coded secrets with environment variables in your code.

After the initial setup, you will learn to interact with the services you started on aws and will deploy manually the application a first time to it. As you get more familiar with the services and interact with them through a CLI, you will gradually understand all the moving parts.

You will then register for a free account on CircleCi and connect your Github account to it. Based on the manual steps used to deploy the app, you will write a config.yml file that will make the process reproducible in CircleCi. You will set up the process to be executed automatically based when code is pushed on the main Github branch.

The project will also include writing documentation and runbooks covering the operations of the deployment process. Those runbooks will serve as a way to communicate with future developers and anybody involved in diagnosing outages of the Full-Stack application.

# Udagram

This application is provided to you as an alternative starter project if you do not wish to host your own code done in the previous courses of this nanodegree. The udagram application is a fairly simple application that includes all the major components of a Full-Stack web application.

### Dependencies

```
- Node v14.15.1 (LTS) or more recent. While older versions can work it is advisable to keep node to latest LTS version

- npm 6.14.8 (LTS) or more recent, Yarn can work but was not tested for this project

- AWS CLI v2, v1 can work but was not tested for this project

- A RDS database running Postgres.

- A S3 bucket for hosting uploaded pictures.

```

### Installation

Provision the necessary AWS services needed for running the application:

1. In AWS, provision a publicly available RDS database running Postgres. <Place holder for link to classroom article>
1. In AWS, provision a s3 bucket for hosting the uploaded files. <Place holder for tlink to classroom article>
1. Export the ENV variables needed or use a package like [dotnev](https://www.npmjs.com/package/dotenv)/.
1. From the root of the repo, navigate udagram-api folder `cd starter/udagram-api` to install the node_modules `npm install`. After installation is done start the api in dev mode with `npm run dev`.
1. Without closing the terminal in step 1, navigate to the udagram-frontend `cd starter/udagram-frontend` to intall the node_modules `npm install`. After installation is done start the api in dev mode with `npm run start`.

## Testing

This project contains two different test suite: unit tests and End-To-End tests(e2e). Follow these steps to run the tests.

1. `cd starter/udagram-frontend`
1. `npm run test`
1. `npm run e2e`

There are no Unit test on the back-end

### Unit Tests:

Unit tests are using the Jasmine Framework.

### End to End Tests:

The e2e tests are using Protractor and Jasmine.

## Built With

-   [Angular](https://angular.io/) - Single Page Application Framework
-   [Node](https://nodejs.org) - Javascript Runtime
-   [Express](https://expressjs.com/) - Javascript API Framework

## License

[License](LICENSE.txt)
