# Docker Image for Maintenance Page
## Why ?
We need a workaround to deploy docker on AWS Elastic Beanstalk.
We are not able to deploy using AWS CLI tools. We receive this error:

## How ?
### To test locally
* Install Docker
* Run `$  sudo docker run -p 80:5000 --name test terahorse/maintenance` 
* Access http://localhost


